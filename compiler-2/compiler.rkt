#lang racket
(require racket/set racket/stream)
(require racket/fixnum)
(require "interp-R0.rkt")
(require "interp-R1.rkt")
(require "interp.rkt")
(require "utilities.rkt")
(require graph)
;(provide (all-defined-out))

(provide
   uniquify
   remove-complex-opera*
   explicate-control
   select-instructions
   uncover-live
   build-interference
   #;assign-homes
   #;patch-instructions
   print-x86
   )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; HW1 Passes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Our symtab is going to be an association list
; A table is a [Listof [Pairof Symbol Int]]
; any time you see ,var you should use the unique ,(gensym var)
(define (extend-symtab table var)
  (cons `(,var . ,(gensym var))
        table))

; Complementary operation to extend-symtab
; complete with ~error handlin~
(define (search-symtab table var)
  (cdr (or (assv var table)
           (error (format "Error: variable ~a not found" var)))))

(define (uniquify-exp symtab)
  (lambda (e)
    (match e
      [(Var x)
       (Var (search-symtab symtab x))]
      [(Int n) (Int n)]
      [(Let x e body)
       (let* ([e-uniq ((uniquify-exp symtab) e)]
              [symtab-x (extend-symtab symtab x)]
              [x-uniq (search-symtab symtab-x x)]
              [body-uniq ((uniquify-exp symtab-x) body)])
         (Let x-uniq
              e-uniq
              body-uniq))]
      [(Prim op es)
       (Prim op (for/list ([e es]) ((uniquify-exp symtab) e)))])))

;; uniquify : R1 -> R1
(define (uniquify p)
  (match p
    [(Program info e)
     (Program info ((uniquify-exp '()) e))]))

; 'type' predicate for atomicity
(define (atomic? e)
  (match e
    [(Var x) #t]
    [(Int n) #t]
    [(Let x e body) #f]
    [(Prim op es) #f]))

; split lst into two sublists (maintaining order)
; where all elements in first value return #f with pred and the first
; element in the second value returns #t for pred
(define (split-where pred lst)
  (match lst
    ['() (values '() '())]
    [`(,a . ,d)
     (if (pred a)
         (values '() lst)
         (let-values ([(rest-front rest-back) (split-where pred d)])
           (values (cons a rest-front)
                   rest-back)))]))

; to-atomize is an expression that should.. be atomized
; bindings is our association list of variable bindings
; then is basically a continuation/callback
(define (rco-atom to-atomize)
  (match to-atomize
    [(Var x) (values (Var x) '())]
    [(Int n) (values (Int n) '())]
    [(Let x e body)
     (let ([new-name (gensym 'tmp)])
       (values new-name (list (cons new-name (Let x e body)))))]
    [(Prim op es)
     (let ([new-name (gensym 'tmp)])
       (values new-name (list (cons new-name (Prim op es)))))]))


(define (rco-exp exp)
  (match exp
    [(Var x) (Var x)]
    [(Int n) (Int n)]
    [(Let x e body)
     ; bro it was that easy??????
     (Let x (rco-exp e) (rco-exp body))]
    [(Prim op es)
     (let-values
         ; split where you find the first complex operand :D
         ([(atomic-front complex-back)
           (split-where (lambda (e) (not (atomic? e))) es)])
       (match complex-back
         ['() (Prim op es)]
         ; if there is nothing complex left, return what we have.
         ; else, bind the complex operand to a variable (atomic) and recur
         [`(,complex-a . ,complex-d)
          (let-values ([(new-name bindings) (rco-atom complex-a)])
            (let ([bound-to (cdr (assv new-name bindings))])
              (Let new-name
                   (rco-exp bound-to)
                   (rco-exp (Prim op (append atomic-front
                                             (list (Var new-name))
                                             complex-d))))))]))]))

;; remove-complex-opera* : R1 -> R1
(define (remove-complex-opera* p)
  (match p
    [(Program info e)
     (Program info (rco-exp e))]))

;; Tail Tail Variable -> Tail
;; Takes two tails and combines them. Takes result of first tail and assigns it to the given variable.
(define (combine-tails t1 t2 x)
  (match t1
    [(Return val) (Seq (Assign x val) t2)]
    [(Seq assign taild) (Seq assign (combine-tails taild t2 x))]))

; R1 -> C0 x Listof(Variable)
; applied to exps in tail position
(define (explicate-tail exp)
  (match exp
    [(Var x) (values (Return (Var x)) '())]
    [(Int n) (values (Return (Int n)) '())]
    [(Let lhs rhs body)
     (let*-values
         ([(body-c0 body-vars)
           (explicate-tail body)]
          [(new-tail new-assignment-vars)
           (explicate-assign lhs rhs body-c0)])
       (values new-tail
               (append new-assignment-vars
                       body-vars)))]
    [(Prim op es)
     (values (Return (Prim op es))
             '())]))

; R1 x Variable x C0 -> Tail x Listof(Variable)
; applied to exps that occur on the rhs of a let clause
(define (explicate-assign lhs rhs c0)
  (let-values ([(rhs-c0 rhs-vars)
                (explicate-tail rhs)])
    (values (combine-tails rhs-c0 c0 (Var lhs))
            (cons lhs rhs-vars))))

;; explicate-control : R1 -> C0
(define (explicate-control p)
  (match p
    [(Program info e)
     (let-values ([(body* locals*)
                   (explicate-tail e)])
       (Program (list (cons 'locals locals*))
                ;           label: tail
                (CFG (list (cons 'start body*)))))]))

; Checks if two vars are equal.
(define (vars-eq? var1 var2)
  (match var1
    [(Var s1)
     (match var2
       [(Var s2) (eq? s1 s2)]
       [whatever #f])]
    [whatever #f]))

; select instructions for atoms
(define (si-atm atm)
  (match atm
    [(Var x) (Var x)]
    [(Int n) (Imm n)]))

; select instructions for statements
(define (si-stmt stmt)
  (match stmt
    [(Assign var exp)
     (match exp
       [(Var x) (list (Instr 'movq (list (Var x) var)))]
       [(Int n) (list (Instr 'movq (list (Imm n) var)))]
       [(Prim '+ args)
        (match args
          [(list arg1 arg2)
           ; addq-var is the variable that will always be addq
           ; movq-var is the variable we will check if it is equal to var.
           ; We always do (Instr 'addq (list addq-var var))
           ; We just compare movq-var to var to see if we need to bother doing movq.
           (let ([addq-var (si-atm (if (vars-eq? arg2 var) arg1 arg2))]
                 [movq-var (si-atm (if (vars-eq? arg2 var) arg2 arg1))])
             (if (vars-eq? var movq-var)
                 (list (Instr 'addq (list addq-var var)))
                 (list (Instr 'movq (list movq-var var))
                       (Instr 'addq (list addq-var var)))))])]
       [(Prim '- args)
        (match args
          [(list arg)
           (if (vars-eq? arg var)
               (list (Instr 'negq (list var)))
               (list (Instr 'movq (list (si-atm arg) var))
                     (Instr 'negq (list var))))])]
       [(Prim 'read args)
        (list (Callq 'read_int)
              (Instr 'movq (list (Reg 'rax) var)))])]))

; select instructions for tails
; gives a non-empty list of instr
(define (si-tail tail)
  (match tail
    [(Return exp)
     (append (si-stmt (Assign (Reg 'rax) exp))
             (list (Jmp 'conclusion)))]
    [(Seq stmt tail-d)
     (append (si-stmt stmt)
             (si-tail tail-d))]))


;; select-instructions : C0 -> pseudo-x86
(define (select-instructions p)
  (match p
    [(Program info (CFG e))
     (Program
      info
      (CFG (map
            (lambda (label-tail)
              (let* ([label (car label-tail)]
                     [tail (cdr label-tail)]
                     [instr+ (si-tail tail)])
                `(,label . ,(Block '() instr+))))
            e)))]))

; removed 'rax
(define caller-saved (list 'rdx 'rcx 'rsi 'rdi 'r8 'r9 'r10 'r11))
; membership predicate
(define (caller-saved? r)
  (not (not (memv r caller-saved))))

(define callee-saved (list 'rsp 'rbp 'rbx 'r12 'r13 'r14 'r15))
; membership predicate
(define (callee-saved? r)
  (not (not (memv r callee-saved))))


; which operations read/write (r/w) each arg
; movq: r w
; addq: r rw
; negq: rw
; callq: u what

; (values (write args) (read args))
(define (get-write/read instr)
  (match instr
    [(Instr 'addq (list arg1 arg2))
     (values (filter Var? (list arg2))
             (filter Var? (list arg1 arg2)))]
    [(Instr 'movq (list arg1 arg2))
     (values (filter Var? (list arg2))
             (filter Var? (list arg1)))]
    [(Instr 'negq (list arg))
     (values (filter Var? (list arg))
             (filter Var? (list arg)))]))

; instr+ is a list
; 'fairly simple' - kevin cao's last words
; return a (list of (lists of variables that are live at that point))
(define (liveness instr+)
  (match instr+
    [(cons (Jmp label) '()) '(())]
    [(cons (Callq label) instr-d)
     (let ([l-d (liveness instr-d)])
       (cons (car l-d) l-d))]
    ; we're assuming that instr-a is an (Instr . .)
    [(cons instr-a instr-d)
     (let-values
         ([(write-args read-args) (get-write/read instr-a)])
       (let* ([liveness-d (liveness instr-d)]
              [liveness-a (set-union
                           (set-subtract (car liveness-d)
                                         write-args)
                           read-args)])
         (cons liveness-a
               liveness-d)))]))

;; TODO: register allocation, etc
(define (uncover-live p)
  (match p
    [(Program info (CFG e))
     (Program
      info
      (CFG (map
            (lambda (label-tail)
              (let* ([label (car label-tail)]
                     [instr+ (match (cdr label-tail)
                               ; we just want the instructions from this tail.
                               ; the old info is meaningless
                               [(Block '() instr+) instr+])]
                     [live-after-sets (append (liveness instr+)
                                              ; this one is the 'after-end' live
                                              ; vars set
                                              (list '()))])
                (begin (displayln live-after-sets)
                       `(,label . ,(Block live-after-sets instr+)))))
            e)))]))

(define uwu unweighted-graph/undirected)

; outputs an unweighted-graph/undirected
; we're assuming that the top of instr+ corresponds to the top of bl-info
(define (interference-graph bl-info instr+)
  (match instr+
    [(cons (Jmp label) '())
     (uwu '())]
    [(cons (Callq label) instr-d)
     (let ([graph-d (interference-graph (cdr bl-info) instr-d)])
       (begin
         (for/list ([reg caller-saved])
           (for/list ([var (car bl-info)])
             ; add-edge! is imperative/has side-effects/mutates graph-d, so we
             ; abuse the syntax of match clauses here
             (add-edge! graph-d reg var)))
         graph-d))]
    ; we're assuming that instr-a is an (Instr . .)
    [(cons instr-a instr-d)
     (let ([graph-d (interference-graph (cdr bl-info) instr-d)])
       (match instr-a
         [(Instr 'addq (list arg1 arg2))
          (if (Var? arg2)
              (for/list ([var (car bl-info)])
                (if (not (vars-eq? arg2 var))
                    (add-edge! graph-d arg2 var)
                    'no-interference-addq))
              'arg2-is-rax-addq)
          graph-d]
         ; assumption is that var is a variable (you can't negq an immediate...
         ; right?)
         [(Instr 'negq (list arg))
          (if (Var? arg)
              (for/list ([var (car bl-info)])
                (if (not (vars-eq? arg var))
                    (add-edge! graph-d arg var)
                    'no-interference-negq))
              'arg-is-rax-negq)
          graph-d]
         [(Instr 'movq (list arg1 arg2))
          (if (Var? arg2)
              (for/list ([var (car bl-info)])
                (if (or (vars-eq? arg2 var)
                        (vars-eq? arg1 var))
                    'no-interference-movq
                    (add-edge! graph-d arg2 var)))
              'arg2-is-rax-movq)
          graph-d]))]))

(define (build-interference p)
  (match p
    [(Program info (CFG e))
     (Program
      (list (cons 'conflicts
                  (map (lambda (label-tail)
                         (let* ([label (car label-tail)]
                                [instr+ (match (cdr label-tail)
                                          [(Block bl-info instr+) instr+])]
                                [bl-info (match (cdr label-tail)
                                           [(Block bl-info instr+) bl-info])])
                           ; taking cdr of bl-info so that we only use the
                           ; liveness-after sets; the first before-liveness set
                           ; is (guaranteed to be?) empty
                           (let ([g (interference-graph (cdr bl-info) instr+)])
                             (begin (displayln (get-edges g)) g)))
                         )
                       e)))
      (CFG e))]))

(define book-example
  '(let ([v 1])
     (let ([w 46])
       (let ([x (+ v 7)])
         (let ([y (+ 4 x)])
           (let ([z (+ x w)])
             (+ z (- y))))))))

(define (os-label label)
  (match (system-type 'os)
    ['macosx (format "_~a" label)]
    [other (format "~a" label)]))

(define indent "       ")
(define newline "\n")


(define (print-conclusion bytes-needed)
  (string-append (os-label 'conclusion) ":" newline
                 indent (format "addq   $~a, %rsp" bytes-needed) newline
                 indent "popq   %rbp" newline
                 indent "retq"))

(define (print-main bytes-needed)
  (string-append #;indent ".globl " (os-label 'main) newline
                 (os-label 'main) ":" newline
                 indent "pushq  %rbp" newline
                 indent "movq   %rsp, %rbp" newline
                 indent (format "subq   $~a, %rsp" bytes-needed) newline
                 indent "jmp " (os-label 'start)))

(define (print-arg arg)
  (match arg
    [(Imm n) (format "$~a" n)]
    [(Reg reg) (format "%~a" reg)]
    [(Deref reg bytes) (format "~a(%~a)" bytes reg)]))

(define (print-instr instr)
  (match instr
    [(Instr op (list arg1 arg2))
     (format "~a   ~a, ~a" op (print-arg arg1) (print-arg arg2))]
    [(Instr op (list arg))
     (format "~a   ~a" op (print-arg arg))]
    [(Jmp label) (format "jmp ~a" (os-label label))]
    [(Callq label) (format "callq ~a" (os-label label))]))

(define (print-start block)
  (let ([instr+ (match block [(Block _ instructions) instructions])])
    (string-append
     (os-label 'start) ":" newline
     (foldr (lambda (instr so-far)
              (string-append indent (print-instr instr) newline
                             so-far))
            ""
            instr+))))

(define (actual-bytes-needed bytes-needed)
  (match (system-type 'os)
    ['macosx
     (if (not (zero? (modulo bytes-needed 16)))
         (+ 8 bytes-needed)
         bytes-needed)]
    [whatever bytes-needed]))

;; print-x86 : x86 -> string
(define (print-x86 p)
  (match p
    [(Program `((stack-space . ,bytes-needed))
              (CFG (list `(,start-label . ,start-block))))
     (string-append
      (print-start start-block)
      newline
      (print-main (actual-bytes-needed bytes-needed))
      newline
      (print-conclusion (actual-bytes-needed bytes-needed)))]))

; all the passes needed to be used in (t .)
(define test-passes
  (list
   uniquify
   remove-complex-opera*
   explicate-control
   select-instructions
   uncover-live
   build-interference
   #;assign-homes
   #;patch-instructions
   #;print-x86
   ))

; t = test, just so I can type it quickly lol
; p should be a quoted R1 program list
(define (t p)
  (testttt (parse-program
            `(program
              ()
              ,p))
           test-passes))

; helper, just does natural recursion
(define (testttt p passes)
  (match passes
    ['() p]
    [`(,pass-a . ,passes-d)
     (testttt (pass-a p) passes-d)]))

(define r1-passes
  (list
   uniquify
   remove-complex-opera*
   explicate-control
   select-instructions
   uncover-live
   build-interference
   #;assign-homes
   #;patch-instructions
   #;print-x86
   ))

; our opportunity for style/coolness points
(define (compile program passes)
  (match passes
    ['() program]
    [`(,pass-a . ,passes-d)
     (compile (pass-a program) passes-d)]))

(define (p prog)
  (displayln (t prog)))











