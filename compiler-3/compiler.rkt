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
 type-check
 shrink
 uniquify
 remove-complex-opera*
 explicate-control
 select-instructions
 uncover-live
 build-interference
 allocate-registers
 patch-instructions
 print-x86
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; HW1 Passes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (type-check-prim env)
  (lambda (prim)
    (match prim
      [(Prim 'read (list)) 'Integer]
      [(Prim 'eq? (list e1 e2))
       (define Te1 ((type-check-exp env) e1))
       (define Te2 ((type-check-exp env) e2))
       (if (eqv? Te1 Te2)
           ; assuming that only atom types are int/bool
           #;
           (and (eqv? Te1 Te1)
                (or (eqv? Te1 'Integer)
                    (eqv? Te1 'Boolean)))
           'Boolean
           (error "eq? should take two ints or two bools, given " (list e1 e2)))]
      [(Prim '< (list e1 e2))
       (define Te1 ((type-check-exp env) e1))
       (define Te2 ((type-check-exp env) e2))
       (if (and (eqv? Te1 'Integer)
                (eqv? Te2 'Integer))
           'Boolean
           (error "< should take two ints, given " (list e1 e2)))]
      [(Prim '<= (list e1 e2))
       (define Te1 ((type-check-exp env) e1))
       (define Te2 ((type-check-exp env) e2))
       (if (and (eqv? Te1 'Integer)
                (eqv? Te2 'Integer))
           'Boolean
           (error "<= should take two ints, given " (list e1 e2)))]
      [(Prim '> (list e1 e2))
       (define Te1 ((type-check-exp env) e1))
       (define Te2 ((type-check-exp env) e2))
       (if (and (eqv? Te1 'Integer)
                (eqv? Te2 'Integer))
           'Boolean
           (error "> should take two ints, given " (list e1 e2)))]
      [(Prim '>= (list e1 e2))
       (define Te1 ((type-check-exp env) e1))
       (define Te2 ((type-check-exp env) e2))
       (if (and (eqv? Te1 'Integer)
                (eqv? Te2 'Integer))
           'Boolean
           (error ">= should take two ints, given " (list e1 e2)))]
      [(Prim '+ (list e1 e2))
       (define Te1 ((type-check-exp env) e1))
       (define Te2 ((type-check-exp env) e2))
       (if (and (eqv? Te1 'Integer)
                (eqv? Te2 'Integer))
           'Integer
           (error "+ should take two ints, given " (list e1 e2)))]
      [(Prim '- (list e))
       (define Te ((type-check-exp env) e))
       (if (eqv? Te 'Integer)
           'Integer
           (error "- should take one int, given " (list e)))]
      [(Prim '- (list e1 e2))
       (define Te1 ((type-check-exp env) e1))
       (define Te2 ((type-check-exp env) e2))
       (if (and (eqv? Te1 'Integer)
                (eqv? Te2 'Integer))
           'Integer
           (error "- should take two ints, given " (list e1 e2)))]
      [(Prim 'and (list e1 e2))
       (define Te1 ((type-check-exp env) e1))
       (define Te2 ((type-check-exp env) e2))
       (if (and (eqv? Te1 'Boolean)
                (eqv? Te2 'Boolean))
           'Boolean
           (error "and should take two bools, given " (list e1 e2)))]
      [(Prim 'or (list e1 e2))
       (define Te1 ((type-check-exp env) e1))
       (define Te2 ((type-check-exp env) e2))
       (if (and (eqv? Te1 'Boolean)
                (eqv? Te2 'Boolean))
           'Boolean
           (error "or should take two bools, given " (list e1 e2)))]
      [(Prim 'not (list e))
       (define Te ((type-check-exp env) e))
       (if (eqv? Te 'Boolean)
           'Boolean
           (error "not should take one bool, given " (list e)))])))

(define (type-check-exp env)
  (lambda (e)
    (match e
      [(Var x) (dict-ref env x)]
      [(Int n) 'Integer]
      [(Bool b) 'Boolean]
      [(Prim op args) ((type-check-prim env) e)]
      [(Let x e body)
       (define Te ((type-check-exp env) e))
       (define Tb ((type-check-exp (dict-set env x Te)) body))
       Tb]
      [(If cnd cnsq alt)
       (unless (eqv? 'Boolean ((type-check-exp env) cnd))
         (error "condition given to if should be bool, given " cnd))
       (define Tc ((type-check-exp env) cnsq))
       (define Ta ((type-check-exp env) alt))
       (unless (eqv? Tc Ta)
         (error "consequent and alternative in if should have same type, given " (list cnsq alt)))
       Tc]
      [else
       (error "type-check-exp couldn't match" e)])))

(define (type-check p)
  (match p
    [(Program info body)
     (define Tb ((type-check-exp '()) body))
     (unless (equal? Tb 'Integer)
       (error "result of the program must be an integer, not " Tb))
     (Program info body)]))

;;;;;;;;;;;;;;;;;;;;;;;
; Type checkin' tests ;
;;;;;;;;;;;;;;;;;;;;;;;
#|
compiler.rkt> ((type-check-exp '()) (parse-exp '1))
'Integer
compiler.rkt> ((type-check-exp '()) (parse-exp '#f))
'Boolean
compiler.rkt> ((type-check-exp '()) (parse-exp '#t))
'Boolean
compiler.rkt> ((type-check-exp '()) (parse-exp '(if #t 1 2)))
'Integer
compiler.rkt> ((type-check-exp '()) (parse-exp '(if #t 1 #f)))
; consequent and alternative in if should have same type, given  (1 #f)
; Context:
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f134
;  /Applications/Racket v7.8/collects/racket/repl.rkt:11:26
compiler.rkt> ((type-check-exp '()) (parse-exp '(if #t #t #f)))
'Boolean
compiler.rkt> ((type-check-exp '())(parse-exp '(read)))
'Integer
compiler.rkt> ((type-check-exp '())
 (parse-exp '(if (not (and (or (< (read) 42) #f)
                           (or (and (<= 5 (+ 3 5))
                                    (and (>= (- 4) (- 4 5))
                                         (> (+ (- 3) (- 9 42))
                                            (- (+ 3 4) (- 5757575)))))
                               (eq? (eq? (not #f) #t)
                                    (eq? (+ 5 0) 234234)))))
                 (+ (if (let ([v (+ 1 (+ 4 (+ (- 5) (- 35 4))))])
                          (let ([r (+ v 3)])
                            (if (eq? v r)
                                #f
                                (and (not #f)
                                     #f))))
                        3423
                        4)
                    (+ (read) (read)))
                 (- (let ([x 1])
                      (let ([y 3])
                        (let ([z (+ x (- y))])
                          (let ([x (not #t)])
                            (if x y z))))))))
'Integer
compiler.rkt> ((type-check-exp '())
               (parse-exp '(if (let ([v (+ 1 (+ 4 (+ (- 5) (- 35 4))))])
                                (let ([r (+ v 3)])
                                  (if (eq? v #t)
                                      #f
                                      (and (not #f)
                                           #f))))
                              3423
                              4)))
; eq? should take two ints or two bools, given  (v #t)
; Context:
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f134
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f142
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f142
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f134
;  /Applications/Racket v7.8/collects/racket/repl.rkt:11:26
compiler.rkt> ((type-check-exp '())
               (parse-exp '(if (let ([v (+ 1 #t)])
                                 (let ([r (+ v 3)])
                                   (if (eq? #f #t)
                                       #f
                                       (and (not #f)
                                            #f))))
                               3423
                               4)))
; + should take two ints, given  (1 #t)
; Context:
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f142
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f134
;  /Applications/Racket v7.8/collects/racket/repl.rkt:11:26
compiler.rkt> ((type-check-exp '())
               (parse-exp '(- (let ([x 1])
                      (let ([y 3])
                        (let ([z (+ x (- y))])
                          (let ([x (not #t)])
                            (if x y #f))))))))
; consequent and alternative in if should have same type, given  (y #f)
; Context:
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f134
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f142
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f142
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f142
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f142
;  /Users/zac/co/compiler-3/compiler.rkt:30:2
;  /Applications/Racket v7.8/collects/racket/repl.rkt:11:26
|#

(define (shrink-prim p)
  (match p
    [(Prim '<= (list e1 e2))
     (define shrunk-1 (shrink-exp e1))
     (define shrunk-2 (shrink-exp e2))
     (define tmp-var (gensym 'tmp))
     (Let tmp-var shrunk-1
          (Prim 'not (list (Prim '< (list shrunk-2 (Var tmp-var))))))]
    [(Prim '>= (list e1 e2))
     (define shrunk-1 (shrink-exp e1))
     (define shrunk-2 (shrink-exp e2))
     (Prim 'not (list (Prim '< (list shrunk-1 shrunk-2))))
     ]
    [(Prim '> (list e1 e2))
     (define shrunk-1 (shrink-exp e1))
     (define shrunk-2 (shrink-exp e2))
     (define tmp-var (gensym 'tmp))
     (Let tmp-var shrunk-1
          (Prim '< (list shrunk-2 (Var tmp-var))))
     ]
    [(Prim '- (list e1 e2))
     (define shrunk-1 (shrink-exp e1))
     (define shrunk-2 (shrink-exp e2))
     (Prim '+ (list shrunk-1
                    (Prim '- (list shrunk-2))))]
    [(Prim 'and (list e1 e2))
     (define shrunk-1 (shrink-exp e1))
     (define shrunk-2 (shrink-exp e2))
     (If shrunk-1 shrunk-2 (Bool #f))]
    [(Prim 'or (list e1 e2))
     (define shrunk-1 (shrink-exp e1))
     (define shrunk-2 (shrink-exp e2))
     (If shrunk-1 (Bool #t) shrunk-2)]
    [(Prim op args)
     (Prim op (map shrink-exp args))]))

(define (shrink-exp e)
  (match e
    [(Int n) e]
    [(Var x) e]
    [(Bool b) e]
    [(Prim op args)
     (shrink-prim e)]
    [(If cnd cnsq alt)
     (If (shrink-exp cnd)
         (shrink-exp cnsq)
         (shrink-exp alt))]
    [(Let x e body)
     (Let x (shrink-exp e)
          (shrink-exp body))]))

(define (shrink p)
  (match p
    [(Program info body)
     (Program
      info
      (shrink-exp body))]))

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
      [(Bool b) (Bool b)]
      [(If cnd cnsq alt)
       (let* ([cnd-uniq ((uniquify-exp symtab) cnd)]
              [cnsq-uniq ((uniquify-exp symtab) cnsq)]
              [alt-uniq ((uniquify-exp symtab) alt)])
         (If cnd-uniq cnsq-uniq alt-uniq))]
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
    [(Bool b) #t]
    [whatever #f]))

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
    [(If cnd cnsq alt)
     (let ([new-name (gensym 'tmp)])
       (values new-name (list (cons new-name (If cnd cnsq alt)))))]
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
    [(Bool b) (Bool b)]
    [(If cnd cnsq alt)
     (If (rco-exp cnd)
         (rco-exp cnsq)
         (rco-exp alt))]
    [(Let x e body)
     ; bro it was that easy??????
     (Let x (rco-exp e) (rco-exp body))]
    [(Prim op es)
     #;
     (foldr
      (lambda (new-arg rst)
        (if )) exp es)
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
     (Program info (rco-exp e))
     #;
     (let ([x (Program info (rco-exp e))])
       (begin
         (displayln x)
         x))]))


; what we need in this:
; set of ... blocks?
(define cfg-global (unweighted-graph/directed '()))

; page 69, nice, in book
(define (explicate-pred p b1 b2)
  (begin
    (define label-1 (gensym 'block))
    (define label-2 (gensym 'block))
    #;
    (define label-2
      (match b2
        [(Goto l2) l2]
        [whatever
         (define l2 (gensym 'block))
         (add-vertex! cfg-global `(,l2 . ,b2))
         l2]))
    (add-vertex! cfg-global `(,label-1 . ,b1))
    (add-vertex! cfg-global `(,label-2 . ,b2))
    (match p
      [(If cnd cnsq alt)
       (define-values (b3 alt-vars)
         (explicate-pred alt (Goto label-1) (Goto label-2)))
       (define-values (b4 cnsq-vars)
         (explicate-pred cnsq (Goto label-1) (Goto label-2)))
       (define label-3 (gensym 'block))
       (define label-4 (gensym 'block))
       (add-vertex! cfg-global `(,label-3 . ,b3))
       (add-vertex! cfg-global `(,label-4 . ,b4))
       (add-edge! cfg-global `(,label-3 . ,b3) `(,label-1 . ,b1))
       (add-edge! cfg-global `(,label-3 . ,b3) `(,label-2 . ,b2))
       (add-edge! cfg-global `(,label-4 . ,b4) `(,label-1 . ,b1))
       (add-edge! cfg-global `(,label-4 . ,b4) `(,label-2 . ,b2))
       (explicate-pred cnd b3 b4)]
      [(Bool b) (values (if b b1 b2) '())]
      [(Var v)
       (values
        (IfStmt (Prim 'eq? (list (Var v) (Bool #t)))
                (Goto label-1)
                (Goto label-2))
        '())]
      [(Prim 'not (list e))
       (explicate-pred e (Goto label-2) (Goto label-1))]
      [(Prim op (list e1 e2))
       (values (IfStmt p (Goto label-1) (Goto label-2)) '())]
      [(Let lhs rhs body)
       (define-values (body-exp body-vars)
         (explicate-pred body (Goto label-1) (Goto label-2)))
       (define-values (new-tail new-assignment-vars)
         (explicate-assign lhs rhs body-exp))
       (values new-tail (append body-vars new-assignment-vars))
       ]
      #;
      [whatever
       (define-values (p-exp p-vars) (explicate-pred ))
       (define-values (p-exp p-vars) (explicate-tail p))
       (values p '())]
      )))

  ; R1 -> C0 x Listof(Variable)
  ; applied to exps in tail position
(define (explicate-tail exp)
  (match exp
    [(Var x) (values (Return (Var x)) '())]
    [(Int n) (values (Return (Int n)) '())]
    [(Bool b) (values (Return (Bool b)) '())]
    [(If cnd cnsq alt)
     (define-values (b1 b1-vars) (explicate-tail cnsq))
     (define-values (b2 b2-vars) (explicate-tail alt))
     (define-values (pred-ex pred-vars) (explicate-pred cnd b1 b2))
     (values pred-ex (append pred-vars b1-vars b2-vars))]
    [(Let lhs rhs body)
     (define-values (body-c0 body-vars)
       (explicate-tail body))
     (define-values (new-tail new-assignment-vars)
       (explicate-assign lhs rhs body-c0))
     (values
      new-tail
      (append new-assignment-vars
              body-vars))]
    [(Prim op es)
     (values (Return (Prim op es))
             '())]))

(define b
  '(if (eq? (read) 1)
       (if (eq? (read) 0)
           (+ 10 32)
           (+ 700 77))
       (if (eq? (read) 2)
           (+ 52 3)
           (+ 701 7))))

; Variable x R1 x C0 -> Tail x Listof(Variable)
; applied to exps that occur on the rhs of a let clause
(define (explicate-assign lhs rhs c0)
  (match rhs
    [(Let x e body)
     (define-values (body-tail body-vars) (explicate-assign lhs body c0))
     (define-values (assign-tail assign-vars) (explicate-assign x e body-tail))
     (values assign-tail (cons x (append body-vars assign-vars)))]
    [(If cnd cnsq alt)
     (define label-1 (gensym 'block))
     (add-vertex! cfg-global `(,label-1 . ,c0))
     (define-values (b2-tail b2-vars)
       (explicate-assign lhs cnsq (Goto label-1)))
     (define-values (b3-tail b3-vars)
       (explicate-assign lhs alt (Goto label-1)))
     (define-values (b4-tail b4-vars)
       (explicate-pred cnd b2-tail b3-tail))
     (values b4-tail (append b4-vars b3-vars b2-vars))
     ]
    [whatever
     (values (Seq (Assign (Var lhs) rhs) c0) '())]))

;; explicate-control : R1 -> C0
(define (explicate-control p)
  (match p
    [(Program info e)
     (set! cfg-global (unweighted-graph/directed '()))
     (define-values (start-block start-locals)
       (explicate-tail e))
     (add-vertex! cfg-global `(start . ,start-block))
     (Program (list (cons 'locals start-locals))
              (CFG (get-vertices cfg-global)))]))

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
    [(Int n) (Imm n)]
    [(Bool b) (if b (Imm 1) (Imm 0))]))

; select instructions for statements
(define (si-stmt stmt)
  (match stmt
    [(Assign var exp)
     (match exp
       [(Var x) (list (Instr 'movq (list (Var x) var)))]
       [(Int n) (list (Instr 'movq (list (Imm n) var)))]
       [(Bool b) (list (Instr 'movq (list (si-atm exp) var)))]
       [(Prim 'not (list e))
        (define e-si (si-atm e))
        (if (vars-eq? e var)
            (Instr 'xorq (list (Imm 1) e-si))
            (list (Instr 'movq (list e-si var))
                  (Instr 'xorq (list (Imm 1) var))))]
       [(Prim '< (list e1 e2))
        (define e1-si (si-atm e1))
        (define e2-si (si-atm e2))
        (list (Instr 'cmpq (list e2-si e1-si))
              (Instr 'set (list 'l (ByteReg 'al)))
              (Instr 'movzbq (list (ByteReg 'al) var)))
        ]
       [(Prim 'eq? (list e1 e2))
        (define e1-si (si-atm e1))
        (define e2-si (si-atm e2))
        (list (Instr 'cmpq (list e2-si e1-si))
              (Instr 'set (list 'e (ByteReg 'al)))
              (Instr 'movzbq (list (ByteReg 'al) var)))
        ]
       [(Prim '+ args)
        (match args
          [(list arg1 arg2)
           ; addq-var is the variable that will always be addq
           ; movq-var is the variable we will check if it is equal to var.
           ; We always do (Instr 'addq (list addq-var var))
           ; We just compare movq-var to var to see if we need to bother doing
           ; movq.
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
    [(Goto label)
     (list (Jmp label))]
    ; TODO one more case
    [(IfStmt (Prim cmp (list e1 e2)) (Goto label-1) (Goto label-2))
     (define cc
       (match cmp
         ['eq? 'e]
         ['< 'l]))
     (define e1-si (si-atm e1))
     (define e2-si (si-atm e2))
     (list (Instr 'cmpq (list e2-si e1-si))
           (JmpIf cc label-1)
           (Jmp label-2))]
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
             (filter Var? (list arg)))]
    [(Instr 'xorq (list arg1 arg2))
     (values (filter Var? (list arg2))
             (filter Var? (list arg1 arg2)))]
    [(Instr 'cmpq (list arg1 arg2))
     (values '()
             (filter Var? (list arg1 arg2)))]
    [(Instr 'set (list cc arg))
     ; we're assuming that the %al bytereg is not usable for liveness
     (values '() '())]
    [(Instr 'movzbq (list arg1 arg2))
     (values (filter Var? (list arg2))
             ; we're assuming that the %al bytereg is not usable for liveness
             '())]))

; instr+ is a list
; 'fairly simple' - kevin cao's last words
; return a (list of (lists of variables that are live at that point))
(define (liveness instr+ lv-after)
  (match instr+
    [(cons (Jmp label) '()) (list lv-after)]
    [(cons (JmpIf cc label) instr-d)
     (let ([l-d (liveness instr-d lv-after)])
       (cons lv-after l-d))]
    [(cons (Callq label) instr-d)
     (let ([l-d (liveness instr-d lv-after)])
       (cons (car l-d) l-d))]
    ; we're assuming that instr-a is an (Instr . .)
    [(cons instr-a instr-d)
     (let-values
         ([(write-args read-args) (get-write/read instr-a)])
       (let* ([liveness-d (liveness instr-d lv-after)]
              [liveness-a (set-union
                           (set-subtract (car liveness-d)
                                         write-args)
                           read-args)])
         (cons liveness-a
               liveness-d)))]))

(define (get-neighbors* block)
  (match block
    ['() '()]
    [`(,instr . ,block-d)
     (define neighbors-d (get-neighbors* block-d))
     (match instr
       [(Jmp lbl) (cons lbl neighbors-d)]
       [(JmpIf cc lbl) (cons lbl neighbors-d)]
       [whatever neighbors-d])]))

(define (isomorph lst)
  (let* ([new-g (unweighted-graph/directed '())])
    (begin
      (for/list ([v-data lst])
        (begin
          (let* ([block (cdr v-data)]
                 [blonk (match block [(Block bl-info instr+) instr+])]
                 [v (car v-data)]
                 [neighbors (get-neighbors* blonk)])
            (for/list ([u neighbors])
              (add-directed-edge! new-g v u)))))
      new-g)))

;; TODO: register allocation, etc
(define (uncover-live p)
  (match p
    [(Program info (CFG e))
     (define cfg-with-edges
       (isomorph e))
     (define cfg-we-tp (transpose cfg-with-edges))
     (define reverse-top-order
       (tsort cfg-we-tp))
     (Program
      info
      (CFG
       (foldl
        (lambda (label cfg)
          (begin
            (define block (cdr (assv label e)))
            (define-values (instr+ bl-info)
              (match block
                [(Block bl-info instr+) (values instr+ bl-info)]))
            (define neighbors (get-neighbors cfg-with-edges label))
            (define live-after
              (foldr
               (lambda (nbr lv-after)
                 (set-union
                  lv-after
                  ; the lv-before of its neighbor
                  ; TODO this assv is failing? or see above
                  (begin
                    (match (cdr (assv nbr cfg))
                      [(Block bl-info instr+)
                       (car bl-info)]))))
               '()
               (filter (lambda (vtx) (not (eqv? vtx 'conclusion)))
                neighbors)))
            (define liveness-blk (liveness instr+ live-after))
            (define blonk (Block liveness-blk instr+))
            (cons `(,label . ,blonk) cfg)))
        '()
        ; remove conclusion from liveness analysis since we have not
        ; created it yet
        (filter (lambda (vtx) (not (eqv? vtx 'conclusion)))
                reverse-top-order))))]))

(define uwu unweighted-graph/undirected)

(define (add-all-var-args args g)
  (for/list ([arg args])
    (if (Var? arg)
        (add-vertex! g arg)
        'not-var-you-shouldnt-see-this)))

; outputs an unweighted-graph/undirected
; we're assuming that the top of instr+ corresponds to the top of bl-info
; TODO: guarantee that all program vars have vertex in graph
; (may not have edge though)
(define (interference-graph bl-info instr+)
  (match instr+
    [(cons (Jmp label) '())
     (uwu '())]
    [(cons (JmpIf cc label) instr-d)
     ; interference is not changed by jmpif, right?
     (interference-graph (cdr bl-info) instr-d)]
    [(cons (Callq label) instr-d)
     (begin
       (define graph-d
         (interference-graph (cdr bl-info) instr-d))
       (for/list ([reg caller-saved])
         (for/list ([var (car bl-info)])
           ; add-edge! is imperative/has side-effects/mutates graph-d, so we
           ; abuse the syntax of match clauses here
           (add-edge! graph-d (Reg reg) var)))
       graph-d)]
    ; we're assuming that instr-a is an (Instr . .)
    [(cons instr-a instr-d)
     (let ([graph-d (interference-graph (cdr bl-info) instr-d)])
       (match instr-a
         ; assumption is that var is a variable (you can't negq an immediate...
         ; right?)
         [(Instr 'negq (list arg))
          (add-all-var-args (list arg) graph-d)
          (if (Var? arg)
              (for/list ([var (car bl-info)])
                (if (not (vars-eq? arg var))
                    (add-edge! graph-d arg var)
                    'no-interference-negq))
              'arg-is-rax-negq)
          graph-d]
         [(Instr 'addq (list arg1 arg2))
          (add-all-var-args (list arg1 arg2) graph-d)
          (if (Var? arg2)
              (for/list ([var (car bl-info)])
                (if (not (vars-eq? arg2 var))
                    (add-edge! graph-d arg2 var)
                    'no-interference-addq))
              'arg2-is-rax-addq)
          graph-d]
         [(Instr 'movq (list arg1 arg2))
          (add-all-var-args (list arg1 arg2) graph-d)
          (if (Var? arg2)
              (for/list ([var (car bl-info)])
                (if (or (vars-eq? arg2 var)
                        (vars-eq? arg1 var))
                    'no-interference-movq
                    (add-edge! graph-d arg2 var)))
              'arg2-is-rax-movq)
          graph-d]
         [(Instr 'xorq (list arg1 arg2))
          (add-all-var-args (list arg1 arg2) graph-d)
          (if (Var? arg2)
              (for/list ([var (car bl-info)])
                (if (not (vars-eq? arg2 var))
                    (add-edge! graph-d arg2 var)
                    'no-interference-xorq))
              'arg2-is-rax-xorq)
          graph-d]
         [(Instr 'cmpq (list arg1 arg2))
          'cmpq-writes-to-nothing
          #;(add-all-var-args (list arg1 arg2) graph-d)
          #;
          (if (Var? arg2)
              (for/list ([var (car bl-info)])
                (if (or (vars-eq? arg2 var)
                        (vars-eq? arg1 var))
                    'no-interference-cmpq
                    (add-edge! graph-d arg2 var)))
              'arg2-is-rax-cmpq)
          graph-d]
         [(Instr 'set (list cc arg))
          (add-all-var-args (list cc arg) graph-d)
          (if (Var? arg)
              (for/list ([var (car bl-info)])
                (if (vars-eq? arg var)
                    'no-interference-set
                    (add-edge! graph-d arg var)))
              'arg2-is-rax-set)
          graph-d]
         [(Instr 'movzbq (list arg1 arg2))
          (add-all-var-args (list arg1 arg2) graph-d)
          (if (Var? arg2)
              (for/list ([var (car bl-info)])
                (if (or (vars-eq? arg2 var)
                        (vars-eq? arg1 var))
                    'no-interference-movzbq
                    (add-edge! graph-d arg2 var)))
              'arg2-is-rax-movzbq)
          graph-d]))]))

; original map-lambda
#;(let*
      ([label (car label-tail)]
       [instr+ (match (cdr label-tail)
                 [(Block bl-info instr+) instr+])]
       [bl-info (match (cdr label-tail)
                  [(Block bl-info instr+) bl-info])])
    ; taking cdr of bl-info so that we only use the
    ; liveness-after sets; the first before-liveness set
    ; is (guaranteed to be?) empty
    (let ([g (interference-graph (cdr bl-info) instr+)])
      g))
(define (build-interference p)
  (match p
    [(Program info (CFG e))
     (Program
      (cons
       (cons
        'conflicts
        (map
         (lambda (label-tail)
           (begin
             (define label
               (car label-tail))
             (define instr+
               (match (cdr label-tail)
                 [(Block bl-info instr+) instr+]))
             (define bl-info
               (match (cdr label-tail)
                 [(Block bl-info instr+) bl-info]))
             ; taking cdr of bl-info so that we only use the
             ; liveness-after sets; the first before-liveness set
             ; is (guaranteed to be?) empty
             (define g (interference-graph (cdr bl-info) instr+))
             (displayln (get-edges g))
             g))
             e))
       info)
      (CFG e))]))

(define uncolored -1)
(define (uncolored? color) (eqv? color uncolored))
; returns an association list mapping variables to:
; (Pair number saturation) where saturation is a set of numbers/colors
; that this variable cannot have
; graph -> (listof (pairof var (pairof color saturation)))
(define (initial-sat-avail g)
  (map (lambda (v)
         (let* ([v-edges
                 (filter
                  (lambda (edge) (vars-eq? (car edge) v))
                  (get-edges g))]
                [v-neighbors (map cadr v-edges)]
                [v-regs (filter Reg? v-neighbors)]
                [v-saturations
                 (map
                  (lambda (reg)
                    (let ([reg-name
                           (match reg
                             [(Reg reg-name) reg-name])])
                      ; good god
                      (cdr (assv reg-name regs-to-color))))
                  v-regs)])
           ; we want to make sure that each v cannot go in any registers to
           ; which they already have an edge, no matter what
           `(,v . (,uncolored . ,v-saturations))))
       (get-vertices g)))

; saturations is the shape of the output of initial-sat-avail.
; we must ensure that the one we pick is also uncolored
; assumes that saturations is non-empty
(define (select-most-saturated saturations)
  (select-most-saturated-acc
   saturations
   (findf
    (lambda (sat)
      (and (uncolored? (cadr sat))
           (Var? (car sat))))
    saturations)))

(define (select-most-saturated-acc saturations max-so-far)
  (match saturations
    ['() max-so-far]
    [`((,var . (,color . ,saturation-set)) . ,sats-d)
     (let ([new-max
            (if (and
                 (uncolored? color)
                 (Var? var)
                 (> (length saturation-set)
                    (length (cddr max-so-far))))
                (car saturations)
                max-so-far)])
       (select-most-saturated-acc (cdr saturations) new-max))]))


; give u a new color that is not in its saturations
(define (color-u u-pair)
  (color-u-acc u-pair 0))

; accumulator helper fn (we want minimal number not in saturations, so add1)
(define (color-u-acc u-pair n)
  (if (memv n (cddr u-pair))
      (color-u-acc u-pair (add1 n))
      `(,(car u-pair) . (,n . ,(cddr u-pair)))))

; saturations * var-name -> new-saturations (where the var is now colored
; appropriately (see book))
(define (assign-new-color saturations u)
  (match saturations
    ['() (error (format "var ~a not found" u))]
    [`(,sat-a . ,sats-d)
     (if (vars-eq? (car sat-a) u)
         ; re-color u
         (cons (color-u sat-a)
               sats-d)
         (cons sat-a
               (assign-new-color sats-d u)))]))

; saturate ,v with ,color
(define (saturate-neighbor saturations v color)
  (if (not (Var? v)) saturations
      (match saturations
        ['() '()]
        [`((,var-name . (,var-color . ,saturation-set)) . ,sat-d)
         (if (vars-eq? v var-name)
             (cons `(,var-name . (,var-color . ,(cons color saturation-set)))
                   sat-d)
             (cons (car saturations)
                   (saturate-neighbor (cdr saturations) v color)))])))

; add color ,color to saturation lists of all neighbors v of u
(define (saturate-neighbors g saturations u color)
  (let* ([edges (get-edges g)]
         [u-neighbors (filter (lambda (edge) (vars-eq? u (car edge))) edges)])
    (foldr (lambda (u-v sats)
             (saturate-neighbor sats (cadr u-v) color))
           saturations
           u-neighbors)))

(define (print-and-return e)
  (begin (displayln e)
         e))

; one iteration of the graph coloring alg
(define (assign-new-color-and-saturate-neighbors g saturations u)
  (let* ([new-sats (assign-new-color saturations u)]
         [color (cadr (assf (lambda (var) (vars-eq? u var))
                            new-sats))])
    (saturate-neighbors g new-sats u color)))

(define ancasn assign-new-color-and-saturate-neighbors)

; set-subtract uses eqv?, not vars-eq?
(define (remove-u vertices u)
  (match vertices
    ['() '()]
    [`(,vtx . ,vertices-d)
     (if (vars-eq? vtx u)
         vertices-d
         (cons vtx
               (remove-u vertices-d u)))]))

; anything higher than 11 (we use 0,...,11 for registers) will be a stack loc
; interference-graph * list-of-program-vars -> (listof (pairof var color))
(define (color-mappings g vars)
  (let* ([saturations
          (initial-sat-avail g)]
         [W (get-vertices g)]
         [totally-saturated
          (foldr
           (lambda (_v sats)
             (let* ([u (select-most-saturated sats)]
                    [u-label (car u)])
               ; self-documenting code
               (ancasn g sats u-label)))
           saturations
           (filter Var? W))])
    ; get rid of extra info after coloring the graph
    (map (lambda (sat)
           (match sat [`(,var . (,color . ,sat-set))
                       `(,var . ,color)]))
         totally-saturated)))


(define usable-regs
  (list
   `(0 . rdx)
   `(1 . rcx)
   `(2 . rsi)
   `(3 . rdi)
   `(4 . r8)
   `(5 . r9)
   `(6 . r10)
   `(7 . r11)
   `(8 . rbx)
   `(9 . r12)
   `(10 . r13)
   `(11 . r14)
   ))

; flipp
(define regs-to-color
  (map (lambda (p) (cons (cdr p) (car p))) usable-regs))

(define n-usable-regs (length usable-regs))

; we're not proud of this approach but we only noticed the problem at 8p on
; monday, thinking that we had finished the previous friday lol
(define stack-vars-needed -1000)
; color is a natural number (or ,uncolored; see above)
(define (color-to-location color)
  (let ([reg (assv color usable-regs)])
    (if reg
        (Reg (cdr reg))
        ; need a positive multiple of -8, and we can get non-interfering
        ; stack locations by reducing our universe to just these stack vars
        ; ... or email team A
        (let ([stack-loc (add1 (- color n-usable-regs))])
          (begin
            (set! stack-vars-needed (max stack-vars-needed stack-loc))
            (Deref 'rbp (* -8 stack-loc)))))))

(define (assign-regs-helper instr+ color-map)
  (match instr+
    ['() '()]
    [`(,instr-a . ,instr-d)
     (cons
      (match instr-a
        [(Instr op args)
         (Instr
          op
          (map
           (lambda (arg)
             (if (Var? arg)
                 ; https://www.youtube.com/watch?v=OMm1RLF32ig
                 (color-to-location
                  ; assv uses eqv instead of our vars-eq? :|
                  ; the cdr is the color
                  (cdr (assf (lambda (var) (vars-eq? var arg)) color-map)))
                 arg))
           args))]
        [whatever ; (Jmp label)
         instr-a]
        #;[(JmpIf cc label) instr-a]
        #;[(Callq label) instr-a]
        )
      (assign-regs-helper instr-d color-map))]))

; returns a new label-block where vars are replaced with regs or stack-locations
(define (assign-regs-or-stack node color-map)
  (let-values ([(label bl-info instr+)
                (match node
                  [`(,label . ,(Block bl-info instr+))
                   (values label bl-info instr+)])])
    `(,label . ,(Block bl-info
                       (assign-regs-helper instr+ color-map))))
  #;
  (for/list
      ([block-instr+
        (map (lambda (lbl-blk)
               (match (cdr lbl-blk)
                 ; we just want the instructions out of the DAMN block
                 [(Block _info instr+) instr+])) nodes)]
       [color-map color-mappings])
    ))



; TODO: we're giving positive stack locations, which we should not.
; this has to do with some vertices being uncolored. maybe we should
; more closely follow the "while W =/= empty set", "W <- W \ {u}" idea
; from the book? to ensure that we do not saturate a vertex's neighbors twice
;
; see: color-mappings
(define (allocate-registers p)
  (match p
    [(Program (list `(conflicts . ,intf-graphs)
                    `(locals . ,local-vars))
              (CFG nodes))
     (let ([colored-mappings
            (map (lambda (g) (color-mappings g local-vars))
                 intf-graphs)])
       ; don't need the intf-graph anymore
       (Program (list `(locals . ,local-vars))
                (CFG (for/list
                         ([node nodes]
                          [color-map colored-mappings])
                       (assign-regs-or-stack node color-map)))))]))

(define book-example
  #;'(let ([v 1])
       (let ([w 42])
         (let ([x (+ v 7)])
           (let ([y x])
             (let ([z (+ x w)])
               (+ z (- y)))))))
  '(let ([v 1])
     (let ([w 46])
       (let ([x (+ v 7)])
         (let ([y (+ 4 x)])
           (let ([z (+ x w)])
             (+ z (- y))))))))


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
       [whatever-else ;(Jmp label)
        (cons instr-a
              (pi-helper instr-d))]
       #;
       [(JmpIf cc label)
        (cons instr-a
              (pi-helper instr-d))]
      #;
       [(Callq label)
        (cons instr-a
              (pi-helper instr-d))])]))

;; patch-instructions : psuedo-x86 -> x86
(define (patch-instructions p)
  (match p
    [(Program info (CFG nodes))
     (Program (list (cons 'stack-space
                          ; want a non-negative size
                          (* 8 (max 0 stack-vars-needed))))
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
                 ; indent "popq   %rbp" newline
                 (print-callee-saved-regs #f)
                 indent "retq"))

; save? is a boolean; if true, pushq, if false, popq in reverse order
(define (print-callee-saved-regs save?)
  (if save?
      (foldr
       (lambda (next-reg string-so-far)
         (string-append indent (format "pushq  %~a" next-reg) newline
                        string-so-far))
       ""
       callee-saved)
      ; if restore, ie if not save
      (foldr
       (lambda (next-reg string-so-far)
         (string-append indent (format "popq   %~a" next-reg) newline
                        string-so-far))
       ""
       (reverse callee-saved))))

(define (print-main bytes-needed)
  (string-append #;indent ".globl " (os-label 'main) newline
                 (os-label 'main) ":" newline
                 ; odd number of callee-saved and subq one register --> boom
                 ; it's 16-aligned
                 (print-callee-saved-regs #t)
                 ; indent "pushq  %rbp" newline
                 indent "movq   %rsp, %rbp" newline
                 indent (format "subq   $~a, %rsp" bytes-needed) newline
                 indent "jmp " (os-label 'start)))

(define (print-arg arg)
  (match arg
    [(Imm n) (format "$~a" n)]
    [(Reg reg) (format "%~a" reg)]
    [(ByteReg bytereg) (format "%~a" bytereg)]
    [(Deref reg bytes) (format "~a(%~a)" bytes reg)]))

(define (print-instr instr)
  (match instr
    [(Instr 'set (list cc arg))
     (format "set~a   ~a" cc (print-arg arg))]
    [(Instr op (list arg1 arg2))
     (format "~a   ~a, ~a" op (print-arg arg1) (print-arg arg2))]
    [(Instr op (list arg))
     (format "~a   ~a" op (print-arg arg))]
    [(Jmp label) (format "jmp ~a" (os-label label))]
    [(JmpIf cc label) (format "jmp~a ~a" cc (os-label label))]
    [(Callq label) (format "callq ~a" (os-label label))]))

(define (print-blk label block)
  (let ([instr+ (match block [(Block _ instructions) instructions])])
    (string-append
     (os-label label) ":" newline
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
              (CFG blocks))
     (string-append
      (foldr
       (lambda (lbl-blk x86)
         (string-append (print-blk (car lbl-blk) (cdr lbl-blk))
                        newline
                        x86))
       ""
       blocks)
      newline
      #;(print-start start-block)
      newline
      (print-main (actual-bytes-needed bytes-needed))
      newline
      (print-conclusion (actual-bytes-needed bytes-needed)))]))

; all the passes needed to be used in (t .)
(define test-passes
  (list
   type-check
   shrink
   uniquify
   remove-complex-opera*
   explicate-control
   select-instructions
   uncover-live
   build-interference
   allocate-registers
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
   type-check
   shrink
   uniquify
   remove-complex-opera*
   explicate-control
   select-instructions
   uncover-live
   build-interference
   allocate-registers
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









