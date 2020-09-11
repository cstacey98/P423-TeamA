#lang racket
(require racket/set racket/stream)
(require racket/fixnum)
(require "interp-R0.rkt")
(require "interp-R1.rkt")
(require "interp.rkt")
(require "utilities.rkt")
;(provide (all-defined-out))

(provide
   uniquify
   remove-complex-opera*
   explicate-control
   select-instructions
   assign-homes
   patch-instructions
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
           (let ([addq-var (si-atm (if (vars-eq? arg1 var) arg2 arg1))]
                 [movq-var (si-atm (if (vars-eq? arg1 var) arg1 arg2))])
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

; helper for getting next stack location :)
(define (next-loc mappings)
  (* -8 (add1 (length mappings))))

(define (ah-helper p mappings)
  (match p
    ['() '()]
    [`(,instr-a . ,instr-d)
     (match instr-a
       [(Instr op args)
        (let-values
            ([(no-vars-front vars-back) (split-where Var? args)])
          (match vars-back
            ['() (cons instr-a
                       (ah-helper instr-d mappings))]
            [`(,(Var varr) . ,rest-vars)
             (let ([mapping (assv varr mappings)])
               (if mapping
                   (ah-helper
                    (cons (Instr
                           op
                           (append
                            no-vars-front
                            (cons (Deref 'rbp (cdr mapping))
                                  rest-vars)))
                          instr-d)
                    mappings)
                   (let ([mapping (cons varr (next-loc mappings))])
                     (ah-helper
                      (cons (Instr
                             op
                             (append
                              no-vars-front
                              (cons (Deref 'rbp (cdr mapping))
                                    rest-vars)))
                            instr-d)
                      (cons mapping mappings)))))]))]
       [(Jmp label)
        (cons instr-a
              (ah-helper instr-d mappings))]
       [(Callq label)
        (cons instr-a
              (ah-helper instr-d mappings))])]))


;; assign-homes : pseudo-x86 -> pseudo-x86
(define (assign-homes p)
  (match p
    [(Program info (CFG nodes))
     (Program info
              (CFG
               (map
                (lambda (node)
                  (let* ([label (car node)]
                         [blonk (cdr node)]
                         [block-instr+
                          (match blonk
                            [(Block b-info b-instr+) b-instr+])]
                         [instr+ (ah-helper block-instr+ '())])
                    `(,label . ,(Block '() instr+))))
                nodes)))]))

(define (pi-helper p)
  (match p
    ['() '()]
    [`(,instr-a . ,instr-d)
     (match instr-a
       [(Instr op (list arg))
        (cons instr-a
              (pi-helper instr-d))]
       [(Instr op (list arg1 arg2))
        (if (and (Deref? arg1)
                 (Deref? arg2))
            (append (list (Instr 'movq (list arg1 (Reg 'rax)))
                          (Instr op (list (Reg 'rax) arg2)))
                    (pi-helper instr-d))
            (cons instr-a
                  (pi-helper instr-d)))]
       [(Jmp label)
        (cons instr-a
              (pi-helper instr-d))]
       [(Callq label)
        (cons instr-a
              (pi-helper instr-d))])]))

;; patch-instructions : psuedo-x86 -> x86
(define (patch-instructions p)
  (match p
    [(Program info (CFG nodes))
     (Program (list (cons 'stack-space
                          (* 8 (length (cdr (assv 'locals info)) ))))
              (CFG
               (map
                (lambda (node)
                  (let* ([label (car node)]
                         [blonk (cdr node)]
                         [block-instr+
                          (match blonk
                            [(Block b-info b-instr+) b-instr+])]
                         [instr+ (pi-helper block-instr+)])
                    `(,label . ,(Block '() instr+))))
                nodes)))]))

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
   assign-homes
   patch-instructions
   print-x86
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
   assign-homes
   patch-instructions
   print-x86
   ))

; our opportunity for style/coolness points
(define (compile program passes)
  (match passes
    ['() program]
    [`(,pass-a . ,passes-d)
     (compile (pass-a program) passes-d)]))

(define (p prog)
  (displayln (t prog)))











