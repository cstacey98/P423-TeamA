#lang racket
(require racket/set racket/stream)
(require racket/fixnum)
(require "interp-R0.rkt")
(require "interp-R1.rkt")
(require "interp.rkt")
(require "utilities.rkt")
;(provide (all-defined-out))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; R0 examples
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; The following compiler pass is just a silly one that doesn't change
;; anything important, but is nevertheless an example of a pass. It
;; flips the arguments of +. -Jeremy
(define (flip-exp e)
  (match e
    [(Var x) e]
    ; pls put this line in the support code
    [(Int n) e]
    [(Prim 'read '()) (Prim 'read '())]
    [(Prim '- (list e1)) (Prim '- (list (flip-exp e1)))]
    [(Prim '+ (list e1 e2)) (Prim '+ (list (flip-exp e2) (flip-exp e1)))]))

(define (flip-R0 e)
  (match e
    [(Program info e) (Program info (flip-exp e))]))


;; Next we have the partial evaluation pass described in the book.
; templates START
(define (pe-neg r)
  (match r
    [(Int n) (Int (fx- 0 n))]
    [else (Prim '- (list r))]))

(define (pe-add r1 r2)
  (match* (r1 r2)
    [((Int n1) (Int n2)) (Int (fx+ n1 n2))]
    [(_ _) (Prim '+ (list r1 r2))]))

(define (pe-exp e)
  (match e
    [(Int n) (Int n)]
    [(Prim 'read '()) (Prim 'read '())]
    [(Prim '- (list e1)) (pe-neg (pe-exp e1))]
    [(Prim '+ (list e1 e2)) (pe-add (pe-exp e1) (pe-exp e2))]
    ))

(define (pe-R0 p)
  (match p
    [(Program info e) (Program info (pe-exp e))]))
; templates END

(define (test-pe p)
  (assert "testing pe-R0"
     (equal? (interp-R0 p) (interp-R0 (pe-R0 p)))))

(test-pe (parse-program `(program () (+ 10 (- (+ 5 3))))))
(test-pe (parse-program `(program () (+ 1 (+ 3 1)))))
(test-pe (parse-program `(program () (- (+ 3 (- 5))))))

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
; complete with ~error handling~
(define (search-symtab table var)
  (cdr (or (assv var table)
           (error (format "Error: variable ~a not found" var)))))

(define (uniquify-exp symtab)
  (lambda (e)
    (match e
      [(Var x)
       #;(search-symtab symtab x)
       (Var (search-symtab symtab x))]
      [(Int n) (Int n)]
      [(Let x e body)
       ; TODO capital L let?
       (let* ([e-uniq ((uniquify-exp symtab) e)]
              [symtab-x (extend-symtab symtab x)]
              [x-uniq (search-symtab symtab-x x)]
              [body-uniq ((uniquify-exp symtab-x) body)])
         (Let x-uniq
              e-uniq
              body-uniq))
       #;(let ([e-uniq ((uniquify-exp symtab) e)])
           ((uniquify-exp (extend-symtab symtab x)) body))]
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
      #;[(Var x) (values (Var x) '())]
      #;[(Int n) (values (Int n) '())]
      [(Let x e body)
       (let ([new-name (gensym 'tmp)])
         (values new-name (list (cons new-name (Let x e body)))))]
      [(Prim op es)
       (let ([new-name (gensym 'tmp)])
         (values new-name (list (cons new-name (Prim op es)))))]))

; current problem:
; > (eq? (Var 'tmp161623) (Var 'tmp161623))
; #f
(define (rco-exp exp)
  (match exp
    [(Var x) (Var x)]
    [(Int n) (Int n)]
    [(Let x e body)
     ; if e not atomic, atomize and recur
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
     ; ew
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

; Tail = Assignment* . Return
;
; R1 x Variable x C0 -> Tail x Listof(Variable)
; applied to exps that occur on the rhs of a let clause
(define (explicate-assign lhs rhs c0)
  (let-values ([(rhs-c0 rhs-vars)
                (explicate-tail rhs)])
    (values (combine-tails rhs-c0 c0 (Var lhs))
            (cons lhs #;(cons lhs #f)
                  rhs-vars))))

;; explicate-control : R1 -> C0
(define (explicate-control p)
  (match p
    [(Program info e)
     (let-values ([(body* locals*)
                   (explicate-tail e)])
       (Program (list (cons 'locals locals*))
                ;           label: tail
                (list (cons 'start body*))))]))

; Checks if two vars are equal.
(define (vars-eq? var1 var2)
  (match var1
    [(Var s1)
     (match var2
       [(Var s2) (eq? s1 s2)])]))

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
       [(Var x) (Var x)]
       [(Int n) (Int n)]
       [(Prim '+ args)
        (match args
          [(var1 var2)
           ; addq-var is the variable that will always be addq
           ; movq-var is the variable we will check if it is equal to var.
           ; We always do (Instr 'addq (list addq-var var))
           ; We just compare movq-var to var to see if we need to bother doing movq.
           (let ([addq-var (if (vars-eq? var1 var) var2 var1)]
                  [movq-var (if (vars-eq? var1 var) var1 var2)])
             (if (vars-eq? var movq-var)
                 (Instr 'addq (list addq-var var))
                 (list (Instr 'movq (list movq-var var)) (Instr 'addq (list addq-var var)))))])]
       ; x = y + z
       [(Prim '- args)
        ...]
       [(Prim 'read args)
        ...])]))

; select instructions for tails
; gives a non-empty list of instr
(define (si-tail tail)
  (match tail
    [(Return exp)
     (list (Instr 'movq (list exp (Reg 'rax)))
           (Callq 'conclusion))]
    [(Seq stmt tail-d)
     (cons (si-stmt stmt)
          (si-tail tail-d))]))

;; select-instructions : C0 -> pseudo-x86
(define (select-instructions p)
  (error "TODO: code goes here (select-instructions)"))

;; assign-homes : pseudo-x86 -> pseudo-x86
(define (assign-homes p)
  (error "TODO: code goes here (assign-homes)"))

;; patch-instructions : psuedo-x86 -> x86
(define (patch-instructions p)
  (error "TODO: code goes here (patch-instructions)"))

;; print-x86 : x86 -> string
(define (print-x86 p)
  (error "TODO: code goes here (print-x86)"))

; all the passes needed to be used in (t .)
(define test-passes
  (list
   uniquify
   remove-complex-opera*
   explicate-control
   ;select-instructions
   ;assign-homes
   ;patch-instructions
   ;print-x86
   ))

; t = test, just so I can type it quickly lol
; p should be a quoted R1 program list
(define (t p)
  (testttt (parse-program
            `(program
              ()
              ,p))
           test-passes))

; doesn't work :(
; te = test and eval
(define (te p)
    (eval (t p)))

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






















