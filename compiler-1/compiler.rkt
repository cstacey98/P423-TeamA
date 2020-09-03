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
       (begin
         (displayln es)
       (Prim op (for/list ([e es]) ((uniquify-exp symtab) e))))])))

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
     (if (not (atomic? e))
         (let-values ([(new-name-e bindings-e) (rco-atom e)])
           (let ([bound-to (cdr (assv new-name-e bindings-e))])
             (Let new-name-e
                  (rco-exp bound-to)
                  ; recur with e now being atomized
                  (rco-exp (Let x (Var new-name-e) body)))))
         ; do the same thing to body
         (if (not (atomic? body))
             (let-values ([(new-name-body bindings-body) (rco-atom body)])
               (let ([bound-to (cdr (assv new-name-body bindings-body))])
                 (Let new-name-body
                      (rco-exp bound-to)
                      ; don't recur because both parts are now rco'd
                      (Let x e (Var new-name-body)))))
             (Let x e body)))]
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



; abandoning this, but it's here just in case (until we finish the rest of rco*)
#;(define (rco-exp exp)
  (match exp
    [(Var x) (Var x)]
    [(Int n) (Int n)]
    [(Let x e body)
     (if (atomic? e)
         e
         (let-values
             ([(e-atom e-bindings) (rco-atom e)])
           (let ([atomized-bindings
                  (for/list ([binding e-bindings])
                    (rco-exp binding))])
             (let ([body-rco (rco-exp body)])
               (Let x e-atom )))))]
    [(Prim op es)
     (if (andmap atomic? es)
         (Prim op es)
         (Let 
          (Prim op
               (for/list ([arg es])
                 (let-values
                     ([(arg-atm arg-bindings) (rco-atom arg)])
                   (let ([binding (assv arg-atm arg-bindings)])
                     (if binding
                         (Let (car binding)
                              (cdr binding)
                              (car binding))
                         arg-atm)))))

          
     #;(Prim op (for/list ([arg es])
                  (if (atomic? arg)
                      arg
                    (Let (gensym 'tmp)
                         (let-values
                             ([(arg-atm arg-bindings) (rco-atom arg)])
                           )))))))]))

;; remove-complex-opera* : R1 -> R1
(define (remove-complex-opera* p)
  (match p
    [(Program info e)
     (Program info (rco-exp e))]))

;; explicate-control : R1 -> C0
(define (explicate-control p)
  (error "TODO: code goes here (explicate-control)"))

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


(define r1-passes
  (list uniquify
        remove-complex-opera*
        explicate-control
        select-instructions
        assign-homes
        patch-instructions
        print-x86))

; our opportunity for style/coolness points
(define (compile program passes)
  (match passes
    ['() program]
    [`(,pass-a . ,passes-d)
     (compile (pass-a program) passes-d)]))






















