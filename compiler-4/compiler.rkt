#lang racket
(require racket/set racket/stream)
(require racket/fixnum)
(require "interp-R0.rkt")
(require "interp-R1.rkt")
(require "interp.rkt")
(require "utilities.rkt")
(require graph)
;(provide (all-defined-out))
(AST-output-syntax 'abstract-syntax)
#;
(AST-output-syntax 'concrete-syntax)

(provide
 type-check
 shrink
 uniquify
 expose-allocation
 remove-complex-opera*
 explicate-control
 uncover-locals
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

; I->B or B->B
(define equality
  (list 'eq?))
; I->B
(define comparison
  (list '<
        '>
        '<=
        '>=))
; I->I
(define arithmetic
  (list '+
        '-
        'read))
; B->B
(define bool-algebra
  (list 'and
        'or
        'not))

; Accessors
(define (get-expr ht)
  (match ht
    [(HasType expr type) expr]))
(define (get-type ht)
  (match ht
    [(HasType expr type) type]
    [whatever (error (format "Called get-type on non-HasType ~a" ht))]))

(define (check-args-consistency args T)
  (andmap (lambda (arg) (eq? T (get-type arg))) args))

(define (list-ind n lst)
  (cond
    [(zero? n) (car lst)]
    [else (list-ind (sub1 n) (cdr lst))]))

(define (can-be-eq? t1 t2)
  (match t1
    ['Integer (eq? t1 t2)]
    ['Boolean (eq? t1 t2)]
    [`(Vector ,component-types ...)
     (is-vector? t2)]
    [whatever #f]))

(define (type-check-prim env)
  (lambda (prim)
    (let ([recur (type-check-exp env)])
      (match prim
        [(Prim op args)
         (define args-tc (map recur args))
         (cond
           [(eq? op 'eq?)
            (define e1-tc (recur (car args)))
            (define e2-tc (recur (cadr args)))
            (define Te1 (get-type e1-tc))
            (define Te2 (get-type e2-tc))
            (if (can-be-eq? Te1 Te2)
                (HasType (Prim op (list e1-tc e2-tc)) 'Boolean)
                (error "type error with Prim " op))]
           [(memv op comparison)
            (if (check-args-consistency args-tc 'Integer)
                (HasType (Prim op args-tc) 'Boolean)
                (error "type error with Prim " op))]
           [(memv op arithmetic)
            (if (check-args-consistency args-tc 'Integer)
                (HasType (Prim op args-tc) 'Integer)
                (error "type error with Prim " op))]
           [(memv op bool-algebra)
            (if (check-args-consistency args-tc 'Boolean)
                (HasType (Prim op args-tc) 'Boolean)
                (error "type error with Prim " op))]
           [(eq? op 'vector)
            (define components-tc (map recur args))
            (define vec-type (cons 'Vector (map get-type components-tc)))
            (HasType (Prim op components-tc) vec-type)]
           [(eq? op 'vector-ref)
            (define args-tc (map recur args))
            (define v-tc (recur (car args)))
            (define Tv (get-type v-tc))
            (define Tcomponents (cdr Tv))
            (define index (match (cadr args) [(Int n) n]))
            (if (>= index (length Tcomponents))
                (error (format "trying to access index ~a of vector size ~a"
                               index
                               (length Tcomponents)))
                (HasType (Prim op args-tc) (list-ind index Tcomponents)))]
           [(eq? op 'vector-set!)
            (define args-tc (map recur args))
            (define v-tc (recur (car args)))
            (define Tv (get-type v-tc))
            (define Tcomponents (cdr Tv))
            (define index (match (cadr args) [(Int n) n]))
            (if (>= index (length Tcomponents))
                (error (format "trying to set index ~a of vector size ~a"
                               index
                               (length Tcomponents)))
                (HasType (Prim op args-tc) 'Void))])]))))


(define (type-check-exp env)
  (lambda (e)
    (let ([recur (type-check-exp env)])
      (match e
        [(HasType expr t) (recur expr)]
        [(Var x)
         (HasType e (dict-ref env x))]
        [(Int n) (HasType e 'Integer)]
        [(Bool b) (HasType e 'Boolean)]
        [(Void) (HasType e 'Void)]
        [(Prim op args) ((type-check-prim env) e)]
        [(Let x rhs body)
         (define rhs-tc (recur rhs))
         (define body-tc
           ((type-check-exp (dict-set env x (get-type rhs-tc))) body))
         (HasType
          (Let x rhs-tc body-tc)
          (get-type body-tc))]
        [(If cnd cnsq alt)
         (define cnd-tc (recur cnd))
         (define cnsq-tc (recur cnsq))
         (define alt-tc (recur alt))
         (unless (eq? 'Boolean (get-type cnd-tc))
           (error "condition given to if should be bool, given " cnd))
         (define Tc (get-type cnsq-tc))
         (define Ta (get-type alt-tc))
         (unless (eq? Tc Ta)
           (error (string-append "consequent and alternative in if should "
                                 "have same type, given ")
                  (list Tc Ta)))
         (HasType (If cnd-tc cnsq-tc alt-tc) Tc)]
        [else
         (error "type-check-exp couldn't match " e)]))))

(define (type-check p)
  (match p
    [(Program info body)
     (define typed-body ((type-check-exp '()) body))
     (unless (equal? 'Integer (get-type typed-body))
       (error "result of the program must be an integer, not "
              (get-type typed-body)))
     (Program info typed-body)]))

;;;;;;;;;;;;;;;;;;;;;;;
; Type chicken' tests ;
;;;;;;;;;;;;;;;;;;;;;;;
#|
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
|#

(define op-to-output-type
  (list '(+ . Integer)
        '(- . Integer)
        '(read . Integer)
        '(< . Boolean)
        '(eq? . Boolean)
        '(not . Boolean)
        '(vector . Vector)
        '(vector-set! . Void)
        '(vector-ref . VectorRef)))

#|
compiler.rkt> (t
               '(let ([x (vector 1 3 5 #t)])
                  (let ([y (vector-set! x 0 4)])
                    (if (>= 3 5)
                        (vector-ref
                         x
                         1)
                        42))))
; match: no matching clause for #<void>
; /Users/zac/co/compiler-4/compiler.rkt:54:2
; Context:
;  /Applications/Racket v7.8/collects/racket/match/runtime.rkt:24:0 match:error
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f54
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f54
;  /Users/zac/co/compiler-4/compiler.rkt:144:0 type-check
;  /Users/zac/co/compiler-4/compiler.rkt:1392:0 testttt
;  /Applications/Racket v7.8/collects/racket/repl.rkt:11:26
|#
(define (shrink-prim env)
  (lambda (p)
    (let ([recur (shrink-exp env)])
      (match p
        [(Prim '<= (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (define tmp-var (gensym 'tmp))
         (recur
          (Let tmp-var shrunk-1
               (HasType
                (Prim
                 'not
                 (list
                  (HasType
                   (Prim
                    '<
                    (list shrunk-2
                          (HasType (Var tmp-var)
                                   (get-type shrunk-1))))
                   'Boolean)))
                'Boolean)))]
        [(Prim '>= (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (recur
          (Prim
           'not
           (list
            (HasType
             (Prim
              '<
              (list shrunk-1 shrunk-2))
             'Boolean))))
         ]
        [(Prim '> (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (define tmp-var (gensym 'tmp))
         (recur
          (Let tmp-var shrunk-1
               (HasType
                (Prim '< (list shrunk-2 (Var tmp-var)))
                'Boolean)))
         ]
        [(Prim '- (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (recur
          (Prim
           '+
           (list shrunk-1
                 (HasType (Prim '- (list shrunk-2))
                          (get-type shrunk-2)))))]
        [(Prim 'and (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (recur (If shrunk-1 shrunk-2 (HasType (Bool #f) 'Boolean)))]
        [(Prim 'or (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (recur (If shrunk-1 (HasType (Bool #t) 'Boolean) shrunk-2))]
        [(Prim op args)
         (define output-type (cdr (assv op op-to-output-type)))
         (define shrunk-args (map recur args))
         (define args-types (map get-type shrunk-args))
         (if (eq? 'Vector output-type)
             (set! output-type `(Vector . ,args-types))
             'you-cant-see-me--john-cena)
         (if (eq? 'VectorRef output-type)
             (set! output-type
                   (list-ind (match (cadr args) [(HasType (Int n) 'Integer) n])
                             (cdar args-types)))
             'you-cant-see-me--john-cena)
         (Prim op shrunk-args)
         #;(HasType (Prim op shrunk-args) output-type)
         ]))))

(define (shrink-exp env)
  (lambda (e)
    (let ([recur (shrink-exp env)])
      (match e
        [(HasType expr T)
         (HasType (recur expr) T)]
        [(Int n) e]
        [(Var x) e]
        [(Bool b) e]
        [(Void) e]
        [(Prim op args)
         ((shrink-prim env) e)]
        [(If cnd cnsq alt)
         (define shrunk-cnd (recur cnd))
         (define shrunk-cnsq (recur cnsq))
         (define shrunk-alt (recur alt))
         (If shrunk-cnd
             shrunk-cnsq
             shrunk-alt)
         #;(get-type shrunk-cnsq)
         ]
        [(Let x expr body)
         (define shrunk-expr (recur expr))
         (define new-env (dict-set env x (get-type shrunk-expr)))
         (define shrunk-body ((shrink-exp new-env) body))
         (Let x shrunk-expr
              shrunk-body)
         #;(get-type shrunk-body)
         ]))))

(define (shrink p)
  (match p
    #;
    [(Program info (HasType body 'Integer))
     (Program info ((shrink-exp '()) (pe body)))]
    [(Program info body)
     ; nice try
     (if (not (HasType? body))
         (set! body ((type-check-exp '()) body))
         (void))
     (Program info ((shrink-exp '()) body))]))

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
      ; TODO (?): make simpler hastype matching (revert but add hastype case)
      [(HasType expr t)
       (HasType ((uniquify-exp symtab) expr) t)]
      [(Var x) (Var (search-symtab symtab x))]
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
       (Prim op (for/list ([e es])
                  ((uniquify-exp symtab) e)))])))

;; uniquify : R1 -> R1
(define (uniquify p)
  (match p
    [(Program info e)
     (Program info ((uniquify-exp '()) e))]))


; TODO fix and test this
(define (expose-prim p)
  (match p
    [(HasType (Prim 'vector components) types)
     (define components-exposed (map expose-alloc-exp components))

     (define v-name (gensym 'vec-init-))
     (define len (length components))
     (define vars
       (map (lambda (n) (gensym (format "x-~a-" n)))
            (build-list len identity)))
     (define assignments
       (assign-all vars 0 (Var v-name) types))
     (define decl-and-assg
       (HasType
        (Let v-name
             #;
             (Allocate len types)
             (HasType (Allocate len types) types)
             assignments)
        types))
     (define n-bytes (* 8 (add1 len)))
     (define new-space-needed
       (HasType
        (Prim
         '+
         (list
          #;(GlobalValue 'free_ptr)
          (HasType (GlobalValue 'free_ptr) 'Integer)
          (HasType (Int n-bytes) 'Integer)))
        'Integer))
     (define have-enough-space?
       (HasType
        (Prim
         '<
         (list
          new-space-needed
          #;
          (GlobalValue 'fromspace_end)
          (HasType
           (GlobalValue 'fromspace_end)
           'Integer)))
        'Boolean))
     (define do-nothing
       (HasType (Void) 'Void))
     (define call-collect
       #;(Collect n-bytes)
       (HasType (Collect n-bytes) 'Void)
       )

     (define check-collect?
       (HasType
        (Let (gensym '_)
             (HasType
              (If have-enough-space?
                  do-nothing
                  call-collect)
              'Void)
             decl-and-assg)
        types))
     (assign-components vars components-exposed check-collect?)
     ]
    [(HasType (Prim op args) t)
     (HasType (Prim op (map expose-alloc-exp args)) t)]))

(define (assign-components var-names components after-assigning)
  (match var-names
    ['() after-assigning]
    [`(,x-i . ,xs-d)
     #;
     (define i
       (add1 (- (length (cdr (get-type after-assigning))) (length xs-d))))
     (HasType
      (Let
       x-i
       ; assuming components is a list of `HasType`s
       (car components)
       (assign-components xs-d (cdr components) after-assigning))
      (get-type after-assigning))]))

(define (assign-all to-assign n-assigned vec-name types)
  (match to-assign
    ['() (HasType vec-name types)]
    [`(,a . ,d)
     (HasType
      (Let (gensym '_)
           (HasType
            (Prim 'vector-set!
                  (list (HasType vec-name types)
                        ; n-assigned
                        (HasType (Int n-assigned) 'Integer)
                        (HasType (Var a) (list-ind n-assigned (cdr types)))))
            'Void)
           (assign-all d (add1 n-assigned) vec-name types))
      types)]))


(define (expose-alloc-exp e)
  (match e
    [(HasType (Prim op args) t)
     (expose-prim e)]
    [(HasType expr t) (HasType (expose-alloc-exp expr) t)]
    [(Int n) e]
    [(Var x) e]
    [(Bool b) e]
    [(Void) e]
    [(If cnd cnsq alt)
     (define cnd-e (expose-alloc-exp cnd))
     (define cnsq-e (expose-alloc-exp cnsq))
     (define alt-e (expose-alloc-exp alt))
     (If cnd-e cnsq-e alt-e)]
    [(Let x rhs body)
     (define rhs-e (expose-alloc-exp rhs))
     (define body-e (expose-alloc-exp body))
     (Let x rhs-e body-e)]
    [(Prim op args)
     (displayln 'this-shant-happen)
     (expose-prim e)]))


(define (expose-allocation p)
  (match p
    [(Program info e)
     (Program info (expose-alloc-exp e))]))



; 'type' predicate for atomicity
(define (atomic? e)
  (match e
    [(HasType expr t)
     (atomic? expr)]
    [(Var x) #t]
    [(Int n) #t]
    [(Bool b) #t]
    [(Void) #t]
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
    [(HasType expr t)
     (cond
       #;
       [(HasType? to-atomize)
        (match to-atomize
          [(HasType expr t)
           (define-values (expr-rco expr-vars) (rco-atom expr))
           (if (GlobalValue? expr) (displayln expr-rco) (void))
           (values
            (HasType expr-rco t)
            expr-vars)])]
       [(atomic? expr) (values to-atomize '())]
       [else
        (let ([new-name (gensym 'tmp)])
          (values
           (HasType (Var new-name) t)
           (list (cons new-name to-atomize))))])]))

(define (get-var-name v)
  (match v
    [(Var x) x]
    [(HasType expr t) (get-var-name expr)]))

(define (rco-exp exp)
  (match exp
    [(HasType expr t)
     (HasType
      (match expr
        [thanks-weixi
         #:when (atomic? thanks-weixi)
         thanks-weixi]
        [(Allocate n-items types) exp]
        [(Collect n-bytes) exp]
        [(GlobalValue name) exp]
        [(If cnd cnsq alt)
         (If (rco-exp cnd)
             (rco-exp cnsq)
             (rco-exp alt))]
        [(Let x e body)
         (Let x (rco-exp e) (rco-exp body))]
        [(Prim op es)
         ; split where you find the first complex operand :D
         (define-values (atomic-front complex-back)
           (split-where (lambda (e) (not (atomic? e))) es))
         (match complex-back
           ['() (Prim op es)]
           ; if there is nothing complex left, return what we have.
           ; else, bind the complex operand to a variable (atomic) and recur
           [`(,complex-a . ,complex-d)
            (define-values (new-name bindings) (rco-atom complex-a))
            (define var-name (get-var-name new-name))
            (define bound-to (cdr (assv var-name bindings)))
            (define body-updated
              (HasType
               (Prim op (append atomic-front
                                (list new-name)
                                complex-d))
               t))
            (Let var-name
                 (rco-exp bound-to)
                 (rco-exp body-updated))])])
      t)]))

;; remove-complex-opera* : R1 -> R1
(define (remove-complex-opera* p)
  (match p
    [(Program info e)
     (Program info (rco-exp e))]))


; what we need in this:
; set of ... blocks?
(define cfg-global (unweighted-graph/directed '()))

; page 69, nice, in book
(define (explicate-pred p b1 b2)
  (match p
    [(HasType expr t)
     ;(define-values (pred-expl pred-vars) (explicate-pred expr b1 b2))
     ;(values (HasType pred-expl t) pred-vars)
     (explicate-pred expr b1 b2)]
    [whatever
     (define label-1 (gensym 'block))
     (define label-2 (gensym 'block))
     (add-vertex! cfg-global `(,label-1 . ,b1))
     (add-vertex! cfg-global `(,label-2 . ,b2))
     ; we don't like the idea of a double-match on the same data, but the world
     ; is in shambles anyway
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
        (explicate-pred cnd b4 b3)]
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
        #:when (or (eq? 'eq? op) (eq? '< op))
        (values
         (IfStmt
          (Prim op (list (get-expr e1) (get-expr e2)))
          (Goto label-1)
          (Goto label-2))
         '())]
       [(Prim 'vector-ref (list vec n))
        (define refboi (gensym 'tmp-vec-ref-))
        (explicate-assign
         refboi (HasType p 'Boolean) ; can safely assume this bc expl-*pred*
         (IfStmt
          (Prim 'eq? (list (Bool #t) (Var refboi)))
          (Goto label-1)
          (Goto label-2)))]
       [(Let lhs rhs body)
        (define-values (body-exp body-vars)
          (explicate-pred body (Goto label-1) (Goto label-2)))
        (define-values (new-tail new-assignment-vars)
          (explicate-assign lhs rhs body-exp))
        (values new-tail (append body-vars new-assignment-vars))])]))

  ; R1 -> C0 x Listof(Variable)
  ; applied to exps in tail position
(define (explicate-tail exp)
  (match exp
    [(HasType expr t)
     (explicate-tail expr)
     ; (define-values (expr-expl expr-vars) (explicate-tail expr))
     ; (values (HasType expr-expl t) expr-vars)
     ]
    [(Var x) (values (Return (Var x)) '())]
    [(Int n) (values (Return (Int n)) '())]
    [(Bool b) (values (Return (Bool b)) '())]
    [(Void) (values (Return (Void)) '())]
    [(Allocate n-items types)
     (values (Return (Allocate n-items types)) '())]
    [(GlobalValue name)
     (values (Return (GlobalValue name)) '())]
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
      (append (list (HasType (Var lhs) (get-type rhs)))
              new-assignment-vars
              body-vars))]
    [(Prim op es)
     (values (Return (Prim op (map get-expr es)))
             '())]))

; Variable x R1 x C0 -> Tail x Listof(Variable)
; applied to exps that occur on the rhs of a let clause
(define (explicate-assign lhs rhs c0)
  (match rhs
    [(HasType expr t)
     (match expr
       [(Let x e body)
        (define-values (body-tail body-vars)
          (explicate-assign lhs body c0))
        (define-values (assign-tail assign-vars)
          (explicate-assign x e body-tail))

        (values
         assign-tail
         (cons (HasType (Var x) (get-type e))
               (append body-vars assign-vars)))]
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
        ; Added (Var lhs) to locals since it is a new local.
        (values (Seq (Assign (Var lhs) (remove-ht-expr expr)) c0)
                `(,(HasType (Var lhs) t) . ()))])]
    [whatever (displayln 'frick)]))

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


(define (remove-ht-expr expr)
  (cond
    [(HasType? expr) (remove-ht-expr (get-expr expr))]
    [(Prim? expr)
     (match expr
       [(Prim op args) (Prim op (map remove-ht-expr args))])]
    [else expr]))


(define (uncover-locals p)
  (match p
    [(Program (list `(locals . ,has-types)) e)
     (Program
      (list
       `(locals
         .
         ,(map (lambda (ht)
                 (cons (get-var-name (get-expr ht)) (get-type ht)))
               has-types)))
      e)]))


; Checks if two vars are equal.
(define (vars-eq? var1 var2)
  (match var1
    [(Var s1)
     (match var2
       [(Var s2) (eq? s1 s2)]
       [y
        #:when (symbol? y)
        (eq? s1 y)]
       [whatever #f])]
    [y
     #:when (symbol? y)
     (vars-eq? (Var y) var2)]
    [whatever #f]))

; select instructions for atoms
(define (si-atm atm)
  (match atm
    [(Var x) (Var x)]
    [(Int n) (Imm n)]
    [(Void) (Imm 0)]
    [(GlobalValue name) (Global name)]
    [(Bool b) (if b (Imm 1) (Imm 0))]))

; start with (Vector type*), then give (type*) part to this
(define (vec-types-to-pointer-mask types)
  (match types
    ['() 0]
    [`(,type-a . ,types-d)
     (define pm-d
       (arithmetic-shift (vec-types-to-pointer-mask types-d) 1))
     (if (is-vector? type-a)
         #;
         (and (list? type-a)
              (eq? (car type-a) 'Vector))
         (bitwise-ior 1 pm-d)
         pm-d)]))

; select instructions for statements
(define (si-stmt stmt)
  (match stmt
    [(Collect n-bytes)
     (list (Instr 'movq (list (Reg 'r15) (Reg 'rdi)))
           (Instr 'movq (list (Imm n-bytes) (Reg 'rsi)))
           (Callq 'collect))]
    [(Assign var exp)
     (match exp
       [(Var x) (list (Instr 'movq (list (Var x) var)))]
       [(Int n) (list (Instr 'movq (list (Imm n) var)))]
       [(Void) (list (Instr 'movq (list (si-atm exp) var)))]
       [(Bool b) (list (Instr 'movq (list (si-atm exp) var)))]
       [(GlobalValue name) (list (Instr 'movq (list (si-atm exp) var)))]
       ; can't really assign collect to anything, as per syntax in book
       [(Collect n-bytes)
        (si-stmt exp)]
       [(Allocate len types)
        (define var-prime var)
        (define pointer-mask
          (vec-types-to-pointer-mask (cdr types)))
        (define forwarding 1)
        (define tagg
          (bitwise-ior (arithmetic-shift pointer-mask 7)
                       (arithmetic-shift len 1)
                       forwarding))
        (list (Instr 'movq (list (Global 'free_ptr) var-prime))
              (Instr 'addq (list (Imm (* 8 (add1 len))) (Global 'free_ptr)))
              (Instr 'movq (list var-prime (Reg 'r11)))
              (Instr 'movq (list (Imm tagg) (Deref 'r11 0))))]
       [(Prim 'vector-ref (list vec n))
        ; TODO this is possibly wrong... unless?
        (define vec-prime (si-atm vec))
        (set! n (match n [(Int n_) n_]))
        (list (Instr 'movq (list vec-prime (Reg 'r11)))
              (Instr 'movq (list (Deref 'r11 (* -8 (add1 n))) var)))]
       [(Prim 'vector-set! (list vec n arg))
        ; TODO this is possibly wrong... unless?
        (define vec-prime (si-atm vec))
        (define arg-prime (si-atm arg))
        (set! n (match n [(Int n_) n_]))
        (list (Instr 'movq (list vec-prime (Reg 'r11)))
              (Instr 'movq (list arg-prime (Deref 'r11 (* 8 (add1 n)))))
              (Instr 'movq (list (Imm 0) var)))]
       [(Prim 'not (list e))
        (define e-si (si-atm e))
        (if (vars-eq? e var)
            (list (Instr 'xorq (list (Imm 1) e-si)))
            (list (Instr 'movq (list e-si var))
                  (Instr 'xorq (list (Imm 1) var))))]
       [(Prim '< (list e1 e2))
        (define e1-si (si-atm e1))
        (define e2-si (si-atm e2))
        (if (and (Imm? e1-si) (Imm? e2-si))
            (list (Instr 'movq (list e1-si (Reg 'rax)))
                  (Instr 'cmpq (list e2-si (Reg 'rax)))
                  (Instr 'set (list 'l (ByteReg 'al)))
                  (Instr 'movzbq (list (ByteReg 'al) var)))
            (list (Instr 'cmpq (list e2-si e1-si))
                  (Instr 'set (list 'l (ByteReg 'al)))
                  (Instr 'movzbq (list (ByteReg 'al) var))))
        ]
       [(Prim 'eq? (list e1 e2))
        (define e1-si (si-atm e1))
        (define e2-si (si-atm e2))
        (if (and (Imm? e1-si) (Imm? e2-si))
            (list (Instr 'movq (list e1-si (Reg 'rax)))
                  (Instr 'cmpq (list e2-si (Reg 'rax)))
                  (Instr 'set (list 'e (ByteReg 'al)))
                  (Instr 'movzbq (list (ByteReg 'al) var)))
            (list (Instr 'cmpq (list e2-si e1-si))
                  (Instr 'set (list 'e (ByteReg 'al)))
                  (Instr 'movzbq (list (ByteReg 'al) var))))
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
    [(IfStmt (Prim cmp (list e1 e2)) (Goto label-1) (Goto label-2))
     (define cc
       (match cmp
         ['eq? 'e]
         ['< 'l]))
     (define e1-si (si-atm e1))
     (define e2-si (si-atm e2))
     (list (Instr 'cmpq (list e2-si e1-si))
           ; (Instr 'set (list cc (ByteReg 'al)))
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
                  (begin
                    (match (cdr (assv nbr cfg))
                      [(Block bl-info instr+)
                       (car bl-info)]))))
               '()
               (filter (lambda (vtx) (not (eq? vtx 'conclusion)))
                       neighbors)))
            (define liveness-blk (liveness instr+ live-after))
            (define blonk (Block liveness-blk instr+))
            #;(displayln liveness-blk)
            (cons `(,label . ,blonk) cfg)))
        '()
        ; remove conclusion from liveness analysis since we have not
        ; created it yet
        (filter (lambda (vtx) (not (eq? vtx 'conclusion)))
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
(define (interference-graph bl-info instr+ base-g types)
  (match instr+
    [(cons (Jmp label) '())
     base-g]
    [(cons (JmpIf cc label) instr-d)
     ; interference is not changed by jmpif, right?
     (interference-graph (cdr bl-info) instr-d base-g types)]
    [(cons (Callq label) instr-d)
     (begin
       (define graph-d
         (interference-graph (cdr bl-info) instr-d base-g types))
       (for/list ([reg caller-saved])
         (for/list ([var (car bl-info)])
           ; add-edge! is imperative/has side-effects/mutates graph-d, so we
           ; abuse the syntax of match clauses here
           (add-edge! graph-d (Reg reg) var)))
       (if (eq? label 'collect)
           (begin
             (for/list ([reg callee-saved])
               (for/list ([var (car bl-info)])
                 (let ([type (cdr (assv (get-var-name var) types))])
                   (if (is-vector? type)
                       (add-edge! graph-d var (Reg reg))
                       (void)))))
             graph-d)
           graph-d))]
    ; we're assuming that instr-a is an (Instr . .)
    [(cons instr-a instr-d)
     (let ([graph-d (interference-graph (cdr bl-info) instr-d base-g types)])
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
(define (vector-interference bl-info types g)
  (for/list ([lv-set bl-info])
    (for/list ([var lv-set])
      (let ([type (cdr (assv var types))])
        (if (is-vector? type)
            (for/list ([reg callee-saved])
              (add-edge! g (Var var) (Reg reg)))
            (void))))))

(define (build-interference p)
  (match p
    [(Program (list `(locals . ,types)) (CFG e))
     (define info (list `(locals . ,types)))
     (define base-g (uwu '()))
     (define graphsss
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
             (define g (interference-graph (cdr bl-info) instr+ base-g types))
             (set! base-g g)
             (map
              (lambda (var)
                (add-vertex! g var))
              (car bl-info))
             #;(displayln (get-vertices g))
             g))
         e))
     #;
     (for/list ([g graphsss])
       (displayln (get-edges g)))
     (Program
      (cons (cons 'conflicts graphsss) info)
      #;
      (cons (cons 'conflicts (map get-edges graphsss)) info)
      (CFG e))]))

(define uncolored -1)
(define (uncolored? color) (eq? color uncolored))
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
                [v-regs (filter
                         (lambda
                             (v)
                           (and (Reg? v)
                                (assv v usable-regs-to-color)))
                         v-neighbors)]
                [v-saturations
                 (map
                  (lambda (reg)
                    (let* ([reg-name
                           (match reg
                             [(Reg reg-name) reg-name])]
                          [collll (assv reg-name usable-regs-to-color)])
                      ; good god
                      (cdr collll)))
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

(define (pe e)
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
(define usable-regs-to-color
  (map (lambda (p) (cons (cdr p) (car p))) usable-regs))

(define n-usable-regs (length usable-regs))

; we're not proud of this approach but we only noticed the problem at 8p on
; monday, thinking that we had finished the previous friday lol
(define color-to-call-stack '())
(define call-stack-vars-needed 0)

(define color-to-root-stack '())
(define root-stack-vars-needed 0)

(define (use-root-stack color)
  (begin
    (set! root-stack-vars-needed (+ 1 root-stack-vars-needed))
    (set! color-to-root-stack
          (cons (cons color root-stack-vars-needed) color-to-root-stack))
    root-stack-vars-needed))

(define (use-call-stack color)
  (begin
    (set! call-stack-vars-needed (+ 1 call-stack-vars-needed))
    (set! color-to-call-stack
          (cons (cons color call-stack-vars-needed) color-to-call-stack))
    call-stack-vars-needed))

(define (is-vector? t)
  (and (list? t)
       (eq? 'Vector (car t))))

; color is a natural number (or ,uncolored; see above)
(define (color-to-location color type-mappings arg)
  (match (assv color usable-regs)
    [`(,name . ,val) (Reg val)]
    ; need a positive multiple of -8, and we can get non-interfering
    ; stack locations by reducing our universe to just these stack vars
    ; ... or email team A
    [whatever
     (define var-type
       (assf (lambda (var)
               (vars-eq? var arg)) type-mappings))
     (define which-stack
       (if (is-vector? (cdr var-type))
           'r15
           'rbp))
     (define stack-loc
       (if (eq? which-stack 'r15)
           (let ([r-loc (assv color color-to-root-stack)])
             (if r-loc
                 (cdr r-loc)
                 (use-root-stack color)))
           (let ([c-loc (assv color color-to-call-stack)])
             (if c-loc
                 (cdr c-loc)
                 (use-call-stack color)))))
     ;(set! call-stack-vars-needed (max call-stack-vars-needed stack-loc))

     (Deref which-stack (* -8 stack-loc))]))

(define (assign-regs-helper instr+ color-map type-mappings)
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
                 (color-to-location
                  ; assv uses eqv instead of our vars-eq? :|
                  ; the cdr is the color
                  (let ([x (assf (lambda (var) (vars-eq? var arg)) color-map)])
                    ; HOW IS THIS POSSIBLE
                    (if (eqv? x #f)
                        (raise (format "var ~a not found" x))
                        (cdr x)))
                  type-mappings
                  arg)
                 arg))
           args))]
        [whatever ; (Jmp label)
         instr-a]
        #;[(JmpIf cc label) instr-a]
        #;[(Callq label) instr-a]
        )
      (assign-regs-helper instr-d color-map type-mappings))]))

; returns a new label-block where vars are replaced with regs or stack-locations
(define (assign-regs-or-stack node color-map type-mappings)
  (let-values ([(label bl-info instr+)
                (match node
                  [`(,label . ,(Block bl-info instr+))
                   (values label bl-info instr+)])])
    `(,label . ,(Block bl-info
                       (assign-regs-helper instr+ color-map type-mappings))))
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
       (Program (list `(num-spills . (,call-stack-vars-needed
                                      . ,root-stack-vars-needed)))
                (CFG (for/list
                         ([node nodes]
                          [color-map colored-mappings])
                       (assign-regs-or-stack node color-map local-vars)))))]))

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
    [(Program (list `(num-spills . (,call-stack . ,root-stack)))
              (CFG nodes))
     (Program (list (cons 'stack-space
                          ; want a non-negative size
                          (* 8 call-stack))
                    (cons 'root-stack-space
                          ; want a non-negative size
                          (* 8 root-stack)))
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


(define (print-conclusion bytes-needed root-bytes-needed)
  (string-append (os-label 'conclusion) ":" newline
                 indent (print-instr
                         (Instr 'subq (list (Imm root-bytes-needed)
                                            (Reg 'r15))))
                        newline
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

(define (print-main bytes-needed root-bytes-needed)
  (string-append #;indent ".globl " (os-label 'main) newline
                 (os-label 'main) ":" newline
                 ; odd number of callee-saved and subq one register --> boom
                 ; it's 16-aligned
                 (print-callee-saved-regs #t)
                 ; indent "pushq  %rbp" newline
                 indent "movq   %rsp, %rbp" newline
                 indent (format "subq   $~a, %rsp" bytes-needed) newline
                 indent (print-instr
                         (Instr 'movq (list (Imm 16384) (Reg 'rdi)))) newline
                 indent (print-instr
                         (Instr 'movq (list (Imm 16) (Reg 'rsi)))) newline
                 indent (print-instr (Callq 'initialize)) newline
                 indent (print-instr
                         (Instr 'movq (list (Global 'rootstack_begin)
                                            (Reg 'r15)))) newline
                 indent "movq $0, (%r15)" newline
                 indent (print-instr
                         (Instr 'addq
                                (list (Imm root-bytes-needed) (Reg 'r15))))
                        newline
                 indent "jmp " (os-label 'start)))

(define (print-arg arg)
  (match arg
    ; Not sure if we should prefix these names with _?
    [(Global name) (format "~a(%rip)" (os-label name))]
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
    [(JmpIf cc label) (format "j~a ~a" cc (os-label label))]
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
    [(Program `((stack-space . ,bytes-needed)
                (root-stack-space . ,root-bytes-needed))
              (CFG blocks))
     (displayln 'finishing-a-test...)
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
      (print-main (actual-bytes-needed bytes-needed)
                  (actual-bytes-needed root-bytes-needed))
      newline
      (print-conclusion (actual-bytes-needed bytes-needed)
                        (actual-bytes-needed root-bytes-needed)))]))

; all the passes needed to be used in (t .)
(define test-passes
  (list
   type-check
   shrink
   uniquify
   expose-allocation
   remove-complex-opera*
   explicate-control
   uncover-locals
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

(define vector-test
  '(let ([x1 (vector 1)])
      (let ([x2 (vector 2)])
        (let ([x3 (vector 3)])
          (let ([x4 (vector 4)])
            (let ([x5 (vector 5)])
              (let ([x6 (vector 6)])
                (let ([x7 (vector 7)])
                  (let ([x8 (vector 8)])
                    (let ([x9 (vector 9)])
                      (let ([z1 (vector 1)])
                        (let ([z2 (vector 2)])
                          (let ([z3 (vector 3)])
                            (let ([z4 (vector 4)])
                              (let ([z5 (vector 5)])
                                (let ([z6 (vector 6)])
                                  (let ([z7 (vector 7)])
                                    (+ (vector-ref x1 0)
                                       (+ (vector-ref x2 0)
                                          (+ (vector-ref x3 0)
                                             (+ (vector-ref x4 0)
                                                (+ (vector-ref x5 0)
                                                   (+ (vector-ref x6 0)
                                                      (+ (vector-ref x7 0)
                                                         (+ (vector-ref x8 0)
                                                            (+ (vector-ref x9 0)
                                                               (+ (vector-ref z1 0)
                                                                  (+ (vector-ref z2 0)
                                                                     (+ (vector-ref z3 0)
                                                                        (+ (vector-ref z4 0)
                                                                           (+ (vector-ref z5 0)
                                                                              (+ (vector-ref z6 0)
                                                                                 (vector-ref z6 0)))))))))))))))))))))))))))))))))
              
