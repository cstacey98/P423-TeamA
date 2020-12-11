#lang racket
(require racket/set racket/stream)
(require racket/fixnum)
#;(require "interp.rkt")
(require "type-check-R6.rkt")
(require "utilities.rkt")
(require graph)
;(provide (all-defined-out))
(AST-output-syntax 'abstract-syntax)
;(AST-output-syntax 'concrete-syntax)

(provide
 #;type-check
 shrink
 reveal-functions
 convert-to-closures
 limit-functions
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


(define (get-free-vars p)
  (match p
    [(ProgramDefsExp doot1 doot2 main)
     ((get-exp-free-vars '()) main)]))

(define (get-exp-free-vars env)
  (lambda (expr)
    (match expr
      [(Int n) '()]
      [(Bool b) '()]
      [(Void) '()]
      [(Var x)
       (if (not (assv x env))
           (list (cons x 'Any))
           '())]
      [(Let lhs rhs body)
       (define rhs-fv ((get-exp-free-vars env) rhs))
       (define body-fv
         ((get-exp-free-vars
           (cons `(,lhs . Any) env)) body))
       (append rhs-fv body-fv)]
      [(Prim op args)
       (foldr append '() (map (get-exp-free-vars env) args))]
      [(ValueOf expr val) ((get-exp-free-vars env) expr)]
      [(Exit) '()]
      [(If cnd cnsq alt)
       (foldr append '()
              (map (get-exp-free-vars env)
                   (list cnd cnsq alt)))]
      [(Apply f-exp args)
       (define f-var (Var-name f-exp))
       (define f-fv (if (assv f-var env)
                        '()
                        (list (cons f-var 'Any))))
       (foldr append f-fv (map (get-exp-free-vars env) args))]
      [(Lambda (list `[,prms : ,prm-ts] ...) rt body)
       (define prms-assoc
         (map (lambda (p pt) (cons p pt)) prms prm-ts))
       ((get-exp-free-vars (append prms-assoc env)) body)])))

(define (replace-in-symbol sym find replace)
  (begin
    (define str (symbol->string sym))
    (set! str (string-replace str find replace))
    (string->symbol str)))
(define (remove-dash sym)
  (replace-in-symbol sym "-" ""))

(define gs-seen 0)
(define (gensym sym)
  (begin
    (define new-sym
      (symbol-append sym (string->symbol (format "~a" gs-seen))))
    (set! gs-seen (add1 gs-seen))
    new-sym))

; for the archaeologists later
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; HW1 Passes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (tagof T)
  (match T
    ['Integer 1]
    ['Boolean 4]
    [`(Vector ,ts ...) 2]
    [`(Vectorof ,T) 2]
    [`(,prm-ts ... -> ,rt) 3]
    ['Void 5]))




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

; A->B
(define type-predicates
  (list 'integer?
        'vector?
        'procedure?
        'void?
        'boolean?))

; Accessors
(define (get-expr ht)
  (match ht
    [(HasType expr type) expr]))
(define (get-type ht)
  (match ht
    [(HasType expr type) type]
    #;
    [(Lambda param* rt body)
     ; param types look like [x : Tx], (caddr `[x : Tx]) === Tx
     `(,@(map caddr param*) -> ,rt)]
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

(define (is-function-type? t)
  (match t
    [`(,prm-ts ... -> ,rt) #t]
    [whatever #f]))

#; (define (type-check-prim env)
     (lambda (prim)
       (let ([recur (type-check-exp env)])
         (match prim
           [(Prim op args)
            (define args^ '())
            (define ts-args '())
            (for/list ([arg (reverse args)])
              (begin
                (define-values (arg^ t-arg)
                  (recur arg))
                (set! args^ (cons arg^ args^))
                (set! ts-args (cons t-arg ts-args))))
            (cond
              [(eq? op 'procedure-arity)
               (define e-tc (recur (car args)))
               (if (is-function-type? (get-type e-tc))
                   (Prim op args-tc)
                   (error "type error with Prim " op))]
              [(eq? op 'eq?)
               (define-values (e1^ t-1)
                 (values (car args^) (car ts-args)))
               (define-values (e2^ t-2)
                 (values (cadr args^) (cadr ts-args)))
               (if (can-be-eq? t-1 t-2)
                   (Prim op (list e1^ e2^))
                   (error "type error with Prim " op))]
              [(memv op type-predicates)
               (if (check-args-consistency args^ 'Integer)
                   (Prim op args^)
                   (error "type error with Prim " op))]
              [(memv op comparison)
               (if (check-args-consistency args^ 'Integer)
                   (Prim op args^)
                   (error "type error with Prim " op))]
              [(memv op arithmetic)
               (if (check-args-consistency args^ 'Integer)
                   (Prim op args^)
                   (error "type error with Prim " op))]
              [(memv op bool-algebra)
               (if (check-args-consistency args^ 'Boolean)
                   (Prim op args^)
                   (error "type error with Prim " op))]
              [(eq? op 'vector)
               (define components-tc (map recur args))
               ; (define vec-type (cons 'Vector (map get-type components-tc)))
               (Prim op components-tc)]
              [(eq? op 'vector-ref)
               ; TODO pick up here
               ; (define args-tc (map recur args))
               (define-values (v^ t-v)
                 (recur (car args)))
               (define t-components (cdr t-v))
               (define index (Int-value (cadr args^)))
               (if (>= index (length t-components))
                   (error (format "trying to access index ~a of vector size ~a"
                                  index
                                  (length t-components)))
                   (Prim op args-tc))]
              [(eq? op 'vector-set!)
               (define args-tc (map recur args))
               (define v-tc (car args-tc))
               (define Tv (get-type v-tc))
               (define Tcomponents (cdr Tv))
               (define index (match (cadr args) [(Int n) n]))
               (define new-val-type (get-type (caddr args-tc)))
               (define vec-index-type (list-ind index Tcomponents))
               (if (>= index (length Tcomponents))
                   (error (format "trying to set index ~a of vector size ~a"
                                  index
                                  (length Tcomponents)))
                   (if (equal? vec-index-type new-val-type)
                       (Prim op args-tc)
                       (error
                        (format (string-append "new value has type ~a, "
                                               "vector at index has type ~a")
                                new-val-type
                                vec-index-type))))])]))))

(define param-regs
  '(rdi rsi rdx rcx r8 r9))

(define (fun-def-name d)
  (match d
    [(Def f (list `[,xs : ,ps] ...) rt info body) f]))

(define (fun-def-type d)
  (match d
    [(Def f (list `[,xs : ,ps] ...) rt info body)
     `(,@ps -> ,rt)]))


(define (types-eq? t1 t2)
  (or (eq? t1 t2)
      (and (list? t1)
           (list? t2)
           (andmap types-eq? (cdr t1) (cdr t2)))))

#;(define (type-check-exp env)
    (lambda (e)
      (let ([recur (type-check-exp env)])
        (match e
          #;[(HasType expr t) (recur expr)]
          [(Lambda (and params `([,xs : ,ts] ...)) rt body)
           (define env^ (append (map cons xs ts) env))
           (define-values (body^ t-body)
             ((type-check-exp env^) body))
           (define t `(,@ts -> ,rt))
           (cond
             [(types-eq? rt t-body)
              (values (Lambda params rt body-tc) t)]
             [else (error "mismatch in return type" (get-type body-tc) rt)])]
          [(Var x)
           (values e (dict-ref env x))]
          [(Int n) (values e 'Integer)]
          [(Bool b) (values e 'Boolean)]
          [(Void) (values e 'Void)]
          [(Prim op args)
           ((type-check-prim env) e)]
          [(Let x rhs body)
           (define-values (rhs^ t-rhs) (recur rhs))
           (define-values (body^ t-body)
             ((type-check-exp (dict-set env x t-rhs)) body))
           (values (Let x rhs^ body^) t-body)]
          [(If cnd cnsq alt)
           (define-values (cnd^ t-cnd) (recur cnd))
           (define-values (cnsq^ t-cnsq) (recur cnsq))
           (define-values (alt^ t-alt) (recur alt))
           (unless (eq? 'Boolean t-cnd)
             (error "condition given to if should be bool, given " cnd))
           #;(unless (types-eq? t-cnsq t-alt)
               (error (string-append "consequent and alternative in if should "
                                     "have same type, given ")
                      (list Tc Ta)))
           (values (If cnd^ cnsq^ alt^) '???)]
          [(Apply f es)
           (define-values (f^ t-f) (recur f))
           (define-values (es^ t-es) (map recur es))
           (match t-f
             [`(,tes* ... -> ,rt)
              (for ([arg-ty t-es] [prm-ty tes*])
                (unless (equal? arg-ty prm-ty)
                  (error (format "argument ~a not equal to parameter ~a"
                                 arg-ty prm-ty))))
              (values (Apply f^ es^) rt)]
             [wtf (error "expected a function, not" tf)])]
          [else
           (error "type-check-exp couldn't match " e)]))))

#;(define (type-check-def env)
    (lambda (e)
      (match e
        [(Def f (and doot (list `[,xs : ,ts] ...)) rt info body)
         (define new-env (append (map cons xs ts) env))
         (define-values (body^ t-body)
           ((type-check-exp new-env) body))
         (unless (equal? t-body rt)
           (error "body type ~a not equal to return type ~a" t-body rt))
         (Def f doot rt info body^)])))

#;(define (type-check p)
    (match p
      [(ProgramDefsExp info defs body)
       (define new-env
         (for/list ([d defs])
           (cons (fun-def-name d) (fun-def-type d))))
       (define ds^
         (for/list ([d defs])
           ((type-check-def new-env) d)))
       (define-values (body^ t-body)
         ((type-check-exp new-env) body))
       (unless (equal? 'Integer body^)
         (error "result of the program must be an integer, not "
                t-body))
       (ProgramDefsExp info ds^ body^)]))

(define (translateR7R6Prim prim)
  (match prim
    [(Prim op args)
     #:when (memv op arithmetic)
     (define args^ (for/list ([arg args])
                     (Project (translateR7R6Exp arg)
                              'Integer)))
     (Inject (Prim op args^) 'Integer)]
    [(Prim op args)
     #:when (memv op bool-algebra)
     (define args^ (for/list ([arg args])
                     (Project (translateR7R6Exp arg)
                              'Boolean)))
     (Inject (Prim op args^) 'Boolean)]
    [(Prim op args)
     #:when (memv op comparison)
     (define args^ (for/list ([arg args])
                     (Project (translateR7R6Exp arg)
                              'Integer)))
     (Inject (Prim op args^) 'Boolean)]
    [(Prim op args)
     #:when (memv op (append equality type-predicates))
     (define args^ (map translateR7R6Exp args))
     (Inject (Prim op args^) 'Boolean)]
    [(Prim 'vector args)
     (define size (length args))
     (define args^ (map translateR7R6Exp args))
     (Inject (Prim 'vector args^)
             `(Vector ,@(build-list size (lambda (x) 'Any))))]
    [(Prim 'vector-ref (list vec idx))
     (define vec^ (Project (translateR7R6Exp vec) '(Vectorof Any)))
     (define idx^ (Project (translateR7R6Exp idx) 'Integer))
     (Inject (Prim 'vector-ref (list vec^ idx^)) 'Void)]
    [(Prim 'vector-set! (list vec idx val))
     (define vec^ (Project (translateR7R6Exp vec) '(Vectorof Any)))
     (define idx^ (Project (translateR7R6Exp idx) 'Integer))
     (define val^ (translateR7R6Exp val))
     (Inject (Prim 'vector-set! (list vec^ idx^ val^)) 'Void)]))

(define (translateR7R6Exp expr)
  (match expr
    [(Var x) expr]
    [(Bool b) (Inject expr 'Boolean)]
    [(Int n) (Inject expr 'Integer)]
    [(Void) (Inject expr 'Void)]
    [(Let x rhs body)
     (define rhs^ (translateR7R6Exp rhs))
     (define body^ (translateR7R6Exp body))
     (Let x rhs^ body^)]
    [(If cnd cnsq alt)
     (define cnd^ (translateR7R6Exp cnd))
     (define cnsq^ (translateR7R6Exp cnsq))
     (define alt^ (translateR7R6Exp alt))
     (If (Prim 'eq? (list cnd^ (Inject (Bool #f) 'Boolean))) cnsq^ alt^)]
    [(Apply f args)
     (define arity (length args))
     (define f^
       (Project (translateR7R6Exp f)
                `(,@(build-list arity (lambda (x) 'Any)) -> Any)))
     (define args^ (map translateR7R6Exp args))
     (Apply f^ args^)]
    [(Lambda prms 'Any body)
     (define arity (length prms))
     (define body^ (translateR7R6Exp body))
     (define prms^ (for/list ([p prms])
                     `[,p : Any]))
     (Inject (Lambda prms^ 'Any body^)
             `(,@(build-list arity (lambda (x) 'Any)) -> Any))]
    [(Prim op args) (translateR7R6Prim expr)]))

(define (translateR7R6Defs def)
  (match def
    [(Def f prms rt info body)
     (define body^ (translateR7R6Exp body))
     (define prms^
       (for/list ([p prms])
         `[,p : Any]))
     (Def f prms^ rt info body^)]))

(define (translateR7R6 p)
  (match p
    [(ProgramDefsExp info defs body)
     (define ds^
       (for/list ([d defs])
         (translateR7R6Defs d)))
     (define body^
       (translateR7R6Exp body))
     (ProgramDefsExp info ds^ body^)]))

(define op-to-output-type
  (list '(+ . Integer)
        '(- . Integer)
        '(read . Integer)
        '(< . Boolean)
        '(eq? . Boolean)
        '(not . Boolean)
        '(vector . Vector)
        '(vector-set! . Void)
        '(vector-ref . VectorRef)
        '(procedure-arity . Integer)))

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
               (Prim
                'not
                (list
                 (Prim
                  '<
                  (list shrunk-2
                        (Var tmp-var)))))))]
        [(Prim '>= (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (recur
          (Prim
           'not
           (list
            (Prim
             '<
             (list shrunk-1 shrunk-2)))))]
        [(Prim '> (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (define tmp-var (gensym 'tmp))
         (recur
          (Let tmp-var shrunk-1
               (Prim '< (list shrunk-2 (Var tmp-var)))))
         ]
        [(Prim '- (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (recur
          (Prim
           '+
           (list shrunk-1
                 (Prim '- (list shrunk-2)))))]
        [(Prim 'and (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (recur (If shrunk-1 shrunk-2 (Bool #f)))]
        [(Prim 'or (list e1 e2))
         (define shrunk-1 (recur e1))
         (define shrunk-2 (recur e2))
         (recur (If shrunk-1 (Bool #t) shrunk-2))]
        [(Prim type-pred (list e))
         #:when (assv type-pred type-pred-to-type)
         (define type (assv type-pred type-pred-to-type))
         (recur (If (Prim 'eq? (list (Prim 'tag-of-any e)
                                     (Int (tagof (cdr type)))))
                          (Bool #t)
                          (Bool #f)))]
        [(Prim vector-prim args)
         #:when (or (eq? 'vector-set! vector-prim)
                    (eq? 'vector-ref vector-prim))
         (define vec^ (recur (car args)))
         (define idx^ (recur (cadr args)))
         (define cdr^ (cddr args))
         (set! cdr^ (if (empty? cdr^) cdr^ (recur cdr^)))
          (If
           (recur
            (Prim 'and
                  (list (Prim '<= (list (Int 0) idx^))
                        (Prim '< (list idx^ (Prim 'vector-length (list vec^)))))))
            (Prim vector-prim (cons vec^ (cons idx^ cdr^)))
            (Exit))]
        [(Prim op args)
         (Prim op (map recur args))]))))

(define type-pred-to-type
  '((boolean? . Boolean)
    (integer? . Integer)
    (procedure? . Procedure)
    (void? . Void)
    (vector? . Vector)))

(define get-vector-length
  (lambda (vec)
    (- (length vec) 1)))

(define get-func-arity
  (lambda (fun)
    (- (length fun) 2)))

(define build-project-cond
  (lambda (tmp ftype)
    (define extra-cond
      (cond
        [(is-vector? ftype) (Prim 'eq? (list (Prim 'vector-length (list (Var tmp))) (Int (get-vector-length ftype))))]
        [(is-function-type? ftype) (Prim 'eq? (list (Prim 'procedure-arity (list (Var tmp))) (Int (get-func-arity ftype))))]
        [else #f]))
    (define base-cond
      (Prim 'eq? (list (Prim 'tag-of-any (list (Var tmp)))
                       (Int (tagof ftype)))))
    (if extra-cond
        (Prim 'and (list base-cond extra-cond))
        base-cond)))

(define (shrink-exp env)
  (lambda (e)
    (let ([recur (shrink-exp env)])
      (match e
        [(Project expr ftype)
         (define tmp (gensym 'tmp))
         (define expr^ (recur expr))
         (Let tmp expr^
              (If (recur (build-project-cond tmp ftype))
                  (ValueOf (Var tmp) ftype)
                  (Exit)))]
        [(Inject expr ftype)
         (define expr^ (recur expr))
         (Prim 'make-any (list expr^ (Int (tagof ftype))))]
        [(ValueOf expr val)
         (ValueOf (recur expr) val)]
        [(Exit) e]
        [(Int n) e]
        [(Var x) e]
        [(Bool b) e]
        [(Void) e]
        [(Lambda prm* rt body)
         (define env^
           (foldr (lambda (prm envr)
                    (dict-set envr (car prm) (caddr prm)))
                  env
                  prm*))
         (define body^ ((shrink-exp env^) body))
         (Lambda prm* rt body^)]
        [(Prim op args)
         ((shrink-prim env) e)]
        [(If cnd cnsq alt)
         (define shrunk-cnd (recur cnd))
         (define shrunk-cnsq (recur cnsq))
         (define shrunk-alt (recur alt))
         (If shrunk-cnd
             shrunk-cnsq
             shrunk-alt)
         ]
        [(Let x expr body)
         (define shrunk-expr (recur expr))
         (define new-env (dict-set env x 'Any))
         (define shrunk-body ((shrink-exp new-env) body))
         (Let x shrunk-expr
              shrunk-body)]
        [(Apply fn args)
         (Apply (recur fn) (map recur args))]))))

(define (shrink-def env)
  (lambda (e)
    (match e
      [(Def f (and args (list `[,xs : ,ts] ...)) rt info body)
       (define new-env (append (map cons xs ts) env))
       (Def f args rt info ((shrink-exp new-env) body))]
      #;
      [whatever
       (error 'bollocks)])))

(define (shrink p)
  (match p
    [(ProgramDefsExp info defs body)
     ; nice try
     #;(if (not (HasType? body))
           (set! body ((type-check-exp '()) body))
           (void))
     (define new-env
       (for/list ([d defs])
         (cons (fun-def-name d) (fun-def-type d))))
     ; (map displayln defs)
     (define shrunk-defs
       (map (shrink-def new-env) defs))
     (define shrunk-body ((shrink-exp new-env) body))
     (ProgramDefs
      info
      (append shrunk-defs
              (list (Def 'main '() 'Integer '() shrunk-body))))]))




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
           (error (format "Error: variable ~a not found in ~a" var table)))))

(define (uniquify-exp symtab)
  (lambda (e)
    (let ([recur (uniquify-exp symtab)])
      (match e
        ; TODO (?): make simpler hastype matching (revert but add hastype case)
        #;[(HasType expr t)
         (HasType (recur expr) t)]
        [(Lambda (and prm* (list `[,xs : ,ts] ...)) rt body)
         (define new-env
           (foldr
            (lambda (x tbl)
              (extend-symtab tbl x))
            symtab
            xs))
         (Lambda (for/list ([x xs]
                            [t ts])
                   `[,(search-symtab new-env x) : ,t])
                 rt
                 ((uniquify-exp new-env) body))]
        [(FunRef f) (FunRef (search-symtab symtab f))]
        [(Apply f args)
         (Apply (recur f)
                (map recur args))]
        [(ValueOf expr val)
         (ValueOf (recur expr) val)]
        [(Void) e]
        [(Exit) e]
        [(Var x) (Var (search-symtab symtab x))]
        [(Int n) (Int n)]
        [(Bool b) (Bool b)]
        [(If cnd cnsq alt)
         (let* ([cnd-uniq (recur cnd)]
                [cnsq-uniq (recur cnsq)]
                [alt-uniq (recur alt)])
           (If cnd-uniq cnsq-uniq alt-uniq))]
        [(Let x e body)
         (let* ([e-uniq (recur e)]
                [symtab-x (extend-symtab symtab x)]
                [x-uniq (search-symtab symtab-x x)]
                [body-uniq ((uniquify-exp symtab-x) body)])
           
           (Let x-uniq
                e-uniq
                body-uniq))]
        [(ValueOf e ftype)
         (ValueOf ((uniquify-exp symtab) e) ftype)]
        [(Exit) e]
        [(Prim op es)
         (Prim
          op
          (for/list ([e es])
            (recur e)))]))))

(define (uniquify-def env)
  (lambda (def)
    (match def
      [(Def f (and args (list `[,xs : ,ts] ...)) rt info body)
       (define new-env
         (map (lambda (x) (cons x (gensym x))) xs))
       (define new-args
         (map (lambda (x t) `[,(cdr x) : ,t]) new-env ts))
       (Def (cdr (assv f env))
         new-args
         rt
         info
         ((uniquify-exp (append new-env env)) body))])))

;; uniquify : R1 -> R1
(define (uniquify p)
  (match p
    [(ProgramDefs info defs)
     (define env
       (foldr
        (lambda (d envv)
          (extend-symtab envv (fun-def-name d)))
        '()
        defs))
     (ProgramDefs info (map (uniquify-def env) defs))]))









#;
(define (is-function? t)
  (match t
    [`(,ts ... -> rt) #t]
    [whatever #f]))

(define (reveal-fun-in-body e def-names)
  (match e
    [(Lambda prm* rt body)
     (Lambda prm* rt (reveal-fun-in-body body def-names))]
    [(Apply ex args)
     (define ex-rev
       (reveal-fun-in-body ex def-names))
     (Apply
      ex-rev
      (map (lambda (a)
             (reveal-fun-in-body a def-names))
           args))]
    [(Var x)
     (if (memv x def-names)
         (FunRef x)
         (Var x))]
    [y #:when (atomic? y) y]
    [(ValueOf expr val)
     (ValueOf (reveal-fun-in-body expr def-names) val)]
    [(Exit) e]
    [(Void) e]
    [(Prim op args)
     (Prim op (map (lambda (a) (reveal-fun-in-body a def-names))
                   args))]
    [(If cnd cnsq alt)
     (If (reveal-fun-in-body cnd def-names)
         (reveal-fun-in-body cnsq def-names)
         (reveal-fun-in-body alt def-names))]
    [(Let x rhs body)
     (define rhs-rev (reveal-fun-in-body rhs def-names))
     (define body-rev (reveal-fun-in-body body def-names))
     (Let x rhs-rev body-rev)]
    ))

(define (reveal-funs-def def def-names)
  (match def
    [(Def name typed-args rt f-info body)
     (Def name typed-args rt f-info
       (reveal-fun-in-body body def-names))]))

(define (reveal-functions p)
  (match p
    [(ProgramDefs info defs)
     (define def-names
       (map Def-name defs))
     (ProgramDefs
      info
      (map
       (lambda (d) (reveal-funs-def d def-names))
       defs))]))

(define (closure-conversion-type t)
  (match t
    [simple-t #:when (symbol? t) t]
    [`(Vector ,components ...)
     `(Vector ,@(map closure-conversion-type components))]
    [`(,prm-ts ... -> ,rt)
     `(Vector (,@(map closure-conversion-type prm-ts)
               ->
               ,(closure-conversion-type rt)))]))

(define dummy-type '_)

(define (closure-conversion-exp e)
  (match e
    [(Lambda prm* rt body) ; prm: ([p1 : Any] [p2 : Any] [p3 : Any])
     #; TODO
     (define typed-fvs ((get-exp-free-vars '()) e)) ; '((x . Any) (y . Any) (z . Any))
     (define fv-names (map car typed-fvs)) ; '(x y z)
     (define lambda-name (gensym 'lambda-))
     (define clos-name (gensym 'clos-))
     (define clos-type 'Any)
     (define body^ (closure-conversion-exp body)) ; 
     (define index (add1 (length typed-fvs)))
     (define body-with-fvs-bound
       (foldr
        (lambda (fv bodyy)
          (set! index (sub1 index))
          (Let fv
               (Prim 'vector-ref
                     (list (Var clos-name) (Int index)))
               bodyy))
        body^
        fv-names))

     (define lambda-def
       (Def lambda-name (cons `[,clos-name : ,clos-type]
                              prm*)
         rt '() body-with-fvs-bound))
     (add-lambda-def lambda-def)
     (define fvs
       (for/list ([fv fv-names])
         (Var fv)))
     (Prim 'vector `(,(FunRef lambda-name)
                     ,@fvs))]
    [(Apply ex arg*)
     (define ex^ (closure-conversion-exp ex))
     (define tmp-var (gensym 'applying-))
     #;(define typed-tmp-var
         (HasType (Var tmp-var) (get-type ex^)))
     (Let tmp-var ex^
          (Apply
           (Prim 'vector-ref (list (Var tmp-var)
                                   (Int 0)))
           (cons (Var tmp-var) (map closure-conversion-exp arg*))))]
    [(FunRef f)
     (Prim 'vector (FunRef f))]
    [y #:when (atomic? y) y]
    [(ValueOf expr val) (ValueOf (closure-conversion-exp expr) val)]
    [(Exit) e]
    [(Prim op args)
     (Prim op (map closure-conversion-exp args))]
    [(If cnd cnsq alt)
     (If (closure-conversion-exp cnd)
         (closure-conversion-exp cnsq)
         (closure-conversion-exp alt))]
    [(Let x rhs body)
     (Let
      x
      (closure-conversion-exp rhs)
      (closure-conversion-exp body))]))


(define (clos-fun-type t-clos)
  (match t-clos
    [`(Vector ,t-fn ,t-others ...) t-fn]))

(define (closure-conversion-def def)
  (match def
    [(Def f (and args (list `[,xs : ,ts] ...)) rt info body)
     (define clos-name (gensym 'clos-))
     (define clos `[,clos-name : ,dummy-type])
     (Def f (cons clos args) rt info (closure-conversion-exp body))]))

(define lambda-defs '())
(define (add-lambda-def new-def)
  (set! lambda-defs (cons new-def lambda-defs)))

(define (convert-to-closures p)
  (match p
    [(ProgramDefs info defs)
     (set! lambda-defs '())
     (define defs^ (map closure-conversion-def defs))
     (ProgramDefs info (append defs^ lambda-defs))]))



(define (first-n n ls)
  (match ls
    ['() (values '() '())]
    [`(,a . ,d)
     (cond
       [(zero? n)
        (values '() ls)]
       [else
        (define-values (rec-front rec-back) (first-n (sub1 n) d))
        (values (cons a rec-front) rec-back)])]))

(define (limit-one-arg arg)
  (match arg
    [`[,x : ,t]
     `[,x : ,(limit-type t)]]))

(define (get-arg-type arg)
  (match arg
    [`[,x : ,t] t]))

(define (limit-and-type-args args limit?)
  (cond
    [limit?
     (define-values (var-params vec-params) (first-n 5 args))
     (set! var-params (map limit-one-arg var-params))

     (define vec-types
       (map (compose limit-type get-arg-type) vec-params))
     (define vec-params-name (gensym 'vec-args-))
     (append var-params
             `([,vec-params-name : ,(cons 'Vector vec-types)]))]
    [else (map limit-one-arg args)]))

(define (get-input-types funref-type)
  (begin
    (define-values (inputs _)
      (first-n (- (length funref-type) 2) funref-type))
    inputs))

(define (get-output-type funref-type)
  (last funref-type))

(define (limit-type t)
  (match t
    [`(,inputs-ts ... -> ,rt)
     (define-values (first-5 last-ones)
       (first-n 5 inputs-ts))
     (define new-first-5
       (map limit-type first-5))
     (define last-lim (map limit-type last-ones))
     (define rt-lim (limit-type rt))
     (if (> (length last-ones) 1)
         `(,@new-first-5 (Vector ,last-lim) -> ,rt-lim)
         `(,@new-first-5 ,@last-lim -> ,rt-lim))]
    [other-types t]))

; assume new-args' types have been limited (as per limit-type)
(define (limit-exp expr args-assoc new-args)
  (match expr
    [(FunRef f) (FunRef f)]
    [(Var x)
     (define index (assv x args-assoc))
     ; if referencing 6th or higher, and there are 7 or more inputs
     (if (and index (>= (cdr index) 5)
              (> (length args-assoc)
                 6))
         (Prim 'vector-ref
               (list (Var (car (list-ind 5 new-args)))
                              ; since new-args looks like [x : t]
                     (Int (- (cdr index) 5))))
         (Var x))]
    [e #:when (atomic? e) e]
    [(ValueOf ex val) (ValueOf (limit-exp ex args-assoc new-args) val)]
    [(Exit) expr]
    [(Apply f params)
     (define params-l
       (map
        (lambda (p) (limit-exp p args-assoc new-args))
        params))
     (define-values (front back) (first-n 5 params-l))
     (define new-f (limit-exp f args-assoc new-args))
     (cond
       [(<= (length back) 1)
        (Apply new-f (append front back))]
       [else
        (define new-back (Prim 'vector back))
        (Apply new-f
               (append front (list new-back)))])]
    [(Prim op args)
     (Prim op (map (lambda (a) (limit-exp a args-assoc new-args)) args))]
    [(If cnd cnsq alt)
     (define cnd-l (limit-exp cnd args-assoc new-args))
     (define cnsq-l (limit-exp cnsq args-assoc new-args))
     (define alt-l (limit-exp alt args-assoc new-args))
     (If cnd-l cnsq-l alt-l)]
    [(Let x rhs b)
     (define rhs-l (limit-exp rhs args-assoc new-args))
     (define b-l (limit-exp b args-assoc new-args))
     (Let x rhs-l b-l)]))

(define (limit-funs-def def)
  (match def
    [(Def f (and args (list `[,xs : ,ts] ...)) rt info body)
     (define new-args
       (limit-and-type-args args (> (length args) 6))
       #;
       (if (> (length args) 6)
           (limit-args args)
           args))
     (define args-seen -1)
     (define args-assoc
       (map
        (lambda (a)
          (match a
            [`[,x : ,t]
             (set! args-seen (add1 args-seen))
             `(,x . ,args-seen)]))
        args))
     (define new-body (limit-exp body args-assoc new-args))
     (Def f new-args (limit-type rt) info new-body)]))

(define (limit-functions p)
  (match p
    [(ProgramDefs info defs)
     (ProgramDefs info (map limit-funs-def defs))]))


; TODO
#|

compiler.rkt> (p '((lambda: ([y : Integer]) : Integer (+ 1 y)) 41)
'())
; car: contract violation
;   expected: pair?
;   given: '()
; Context:
;  /Users/zac/co/compiler-6/compiler.rkt:126:0 list-ind
;  /Users/zac/co/compiler-6/compiler.rkt:945:0 assign-all
;  /Users/zac/co/compiler-6/compiler.rkt:945:0 assign-all
;  /Users/zac/co/compiler-6/compiler.rkt:866:0 expose-prim
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f1471
;  /Applications/Racket v7.8/collects/racket/match/compiler.rkt:507:40 f1502
;  /Users/zac/co/compiler-6/compiler.rkt:985:0 expose-alloc-def
;  /Users/zac/co/compiler-6/compiler.rkt:990:0 expose-allocation
;  /Users/zac/co/compiler-6/compiler.rkt:2530:0 testttt
;  /Users/zac/co/compiler-6/compiler.rkt:2543:0 p
;  /Applications/Racket v7.8/collects/racket/repl.rkt:11:26


|#


; TODO fix and test this
(define (expose-prim p)
  (match p
    [(Prim 'vector components) ; types
     (define components-exposed (map expose-alloc-exp components))
     (define v-name (gensym 'vec-init-))
     (define len (length components))
     (define types `(Vector ,@(build-list len (lambda (x) 'Any))))
     (define vars
       (map (lambda (n) (gensym (string->symbol (format "x-~a-" n))))
            (build-list len identity)))
     (define assignments
       (assign-all vars 0 (Var v-name) types))
     (define decl-and-assg
        (Let v-name
             #;
             (Allocate len types)
             (Allocate len types)
             assignments))
     (define n-bytes (* 8 (add1 len)))
     (define new-space-needed
        (Prim
         '+
         (list
          #;(GlobalValue 'free_ptr)
          (GlobalValue 'free_ptr)
          (Int n-bytes))))
     (define have-enough-space?
        (Prim
         '<
         (list
          new-space-needed
          (GlobalValue 'fromspace_end))))
     (define do-nothing (Void))
     (define call-collect (Collect n-bytes))
     (define check-collect?
       (Let (gensym '_)
            (If have-enough-space?
                do-nothing
                call-collect)
            decl-and-assg))
     (assign-components vars components-exposed check-collect?)]
    [(Prim op args)
     (Prim op (map expose-alloc-exp args))]))

(define (assign-components var-names components after-assigning)
  (match var-names
    ['() after-assigning]
    [`(,x-i . ,xs-d)
     #;
     (define i
       (add1 (- (length (cdr (get-type after-assigning))) (length xs-d))))
      (Let
       x-i
       ; assuming components is a list of LIES
       (car components)
       (assign-components xs-d (cdr components) after-assigning))]))

(define (assign-all to-assign n-assigned vec-name types)
  (match to-assign
    ['() vec-name]
    [`(,a . ,d)
     (Let (gensym '_)
          (Prim 'vector-set!
                (list vec-name
                      ; n-assigned
                      (Int n-assigned)
                      (Var a)))
          (assign-all d (add1 n-assigned) vec-name types))]))


(define (expose-alloc-exp e)
  (match e
    [(Prim op args)
     (expose-prim e)]
    [y #:when (atomic? y) e]
    [(ValueOf expr val) (ValueOf (expose-alloc-exp expr) val)]
    [(Exit) e]
    [(Apply f args)
     (Apply (expose-alloc-exp f)
            (map expose-alloc-exp args))]
    [(FunRef f) e]
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

(define (expose-alloc-def def)
  (match def
    [(Def f args rt info body)
     (Def f args rt info (expose-alloc-exp body))]))

(define (expose-allocation p)
  (match p
    [(ProgramDefs info defs)
     (ProgramDefs info (map expose-alloc-def defs))]))



; 'type' predicate for atomicity
(define (atomic? e)
  (match e
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
  (cond
    [(atomic? to-atomize) (values to-atomize '())]
    [else
     (let ([new-name (gensym 'tmp)])
       (values
        (Var new-name)
        (list (cons new-name to-atomize))))]))

(define (get-var-name v)
  (match v
    [(Var x) x]))

(define (rco-exp expr)
  (match expr
    [atm
     #:when (atomic? atm)
     atm]
    #;(Let 'applying-34 ex^
         (Apply
          (Prim 'vector-ref (list (Var 'applying-34)
                                  (Int 0)))
          (cons tmp-var (map closure-conversion-exp arg*))))
    [(Apply f args)
     (define-values (atomic-front complex-back)
       (split-where (compose not atomic?) args))
     (match complex-back
       ['()
        (define f^ (rco-exp f))
        (define new-fun-name
          (gensym 'funref-))
        (Let new-fun-name f^
             (Apply
              (Var new-fun-name)
              args))]
       ; if there is nothing complex left, return what we have.
       ; else, bind the complex operand to a variable (atomic) and recur
       [`(,complex-a . ,complex-d)
        (define f^ (rco-exp f))
        (define-values (new-name bindings) (rco-atom complex-a))
        (define var-name (Var-name new-name))
        (define bound-to (cdr (assv var-name bindings)))

        (define body-updated
          (Apply
           f^
           (append atomic-front
                   (list new-name)
                   complex-d)))
        (Let var-name
             (rco-exp bound-to)
             (rco-exp body-updated))])]
    [(FunRef f) expr]
    [(Allocate n-items types) expr]
    [(Collect n-bytes) expr]
    [(GlobalValue name) expr]
    [(Exit) expr]
    [(If cnd cnsq alt)
     (If (rco-exp cnd)
         (rco-exp cnsq)
         (rco-exp alt))]
    [(ValueOf ex ftype)
     (define new-name (gensym 'tmp))
     (if (atomic? ex)
         expr
         (Let new-name (rco-exp ex)
              (ValueOf (Var new-name) ftype)))]
    [(Let x rhs body)
     (Let x (rco-exp rhs) (rco-exp body))]
    [(Prim op es)
     ; split where you find the first complex operand :D
     (define-values (atomic-front complex-back)
       (split-where (compose not atomic?) es))
     (match complex-back
       ['() expr]
       ; if there is nothing complex left, return what we have.
       ; else, bind the complex operand to a variable (atomic) and recur
       [`(,complex-a . ,complex-d)
        (define-values (new-name bindings) (rco-atom complex-a))
        (define var-name (get-var-name new-name))
        (define bound-to (cdr (assv var-name bindings)))
        (define body-updated
          (Prim op (append atomic-front
                           (list new-name)
                           complex-d)))
        (Let var-name
             (rco-exp bound-to)
             (rco-exp body-updated))])]))

(define (rco-def def)
  (match def
    [(Def f args rt info body)
     (Def f args rt info (rco-exp body))]))

;; remove-complex-opera* : R1 -> R1
(define (remove-complex-opera* p)
  (match p
    [(ProgramDefs info defs)
     (ProgramDefs info (map rco-def defs))]))


; what we need in this:
; set of ... blocks?
(define cfg-global (unweighted-graph/directed '()))

; page 69, nice, in book
(define (explicate-pred p b1 b2)
  (match p
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
       [(ValueOf e ftype)
        (values
         (IfStmt (Prim 'eq? (list (ValueOf e ftype) (Bool #t)))
                 (Goto label-1)
                 (Goto label-2))
         '())]
       [(Exit) (values (Exit) '())]
       [(Var v)
        (values
         (IfStmt (Prim 'eq? (list (Var v) (Bool #t)))
                 (Goto label-1)
                 (Goto label-2))
         '())]
       [(Apply fn args)
        (define tmp-var (gensym 'apply-tmp-))
        (values
         (Seq
          (Assign (Var tmp-var)
                  (Call fn args))
          (IfStmt (Prim 'eq? (list (Var tmp-var) (Bool #t)))
                  (Goto label-1)
                  (Goto label-2)))
         ; Maybe need this?
         #;(,(HasType (Var tmp-var) 'Boolean) . ())
         '())]
       ; ^^^ the type of boolean may change with dynamic types TODO
       [(Prim 'not (list e))
        (explicate-pred e (Goto label-2) (Goto label-1))]
       [(Prim op (list e1 e2))
        #:when (or (eq? 'eq? op) (eq? '< op))
        (values
         (IfStmt
          (Prim op (list e1 e2))
          (Goto label-1)
          (Goto label-2))
         '())]
       [(Prim 'vector-ref (list vec n))
        (define refboi (gensym 'tmp-vec-ref-))
        (explicate-assign
         refboi p ; can safely assume this bc expl-*pred*
         (IfStmt
          (Prim 'eq? (list (Bool #t) (Var refboi)))
          (Goto label-1)
          (Goto label-2)))]
       [(Let lhs rhs body)
        (define-values (body-exp body-vars)
          (explicate-pred body (Goto label-1) (Goto label-2)))
        (define-values (new-tail new-assignment-vars)
          (explicate-assign lhs rhs body-exp))
        (values new-tail '())])]))

; R1 -> C0 x Listof(Variable)
; applied to exps in tail position
(define (explicate-tail exp)
  (match exp
    [e #:when (atomic? e) (values (Return e) '())]
    [(Apply fn args)
     (values
      (TailCall fn args)
      '())]
    [(Exit) (values exp '())]
    [(Allocate n-items types)
     (values (Return (Allocate n-items types)) '())]
    [(GlobalValue name)
     (values (Return (GlobalValue name)) '())]
    [(If cnd cnsq alt)
     (define-values (b1 b1-vars) (explicate-tail cnsq))
     (define-values (b2 b2-vars) (explicate-tail alt))
     (define-values (pred-ex pred-vars) (explicate-pred cnd b1 b2))
     (values pred-ex '())]
    [(Let lhs rhs body)
     (define-values (body-c0 body-vars)
       (explicate-tail body))
     (define-values (new-tail new-assignment-vars)
       (explicate-assign lhs rhs body-c0))
     (values
      new-tail
      '())]
    [(ValueOf e ftype) (values (Return exp) '())]
    [(Prim op es)
     (values (Return (Prim op es))
             '())]))

; Variable x R1 x C0 -> Tail x Listof(Variable)
; applied to exps that occur on the rhs of a let clause
(define (explicate-assign lhs rhs c0)
  (match rhs
    [(Let x e body)
     (define-values (body-tail body-vars)
       (explicate-assign lhs body c0))
     (define-values (assign-tail assign-vars)
       (explicate-assign x e body-tail))
     (values
      assign-tail
      '())]
    [(Apply fn args)
     (values
      (Seq (Assign (Var lhs) (Call fn args))
           c0)
      '())]
    [(If cnd cnsq alt)
     (define label-1 (gensym 'block))
     (add-vertex! cfg-global `(,label-1 . ,c0))
     (define-values (b2-tail b2-vars)
       (explicate-assign lhs cnsq (Goto label-1)))
     (define-values (b3-tail b3-vars)
       (explicate-assign lhs alt (Goto label-1)))
     (define-values (b4-tail b4-vars)
       (explicate-pred cnd b2-tail b3-tail))
     (values b4-tail '())]
    [whatever
     ; Added (Var lhs) to locals since it is a new local.
     (values (Seq (Assign (Var lhs) rhs) c0)
             '())]))

(define (explicate-def def)
  (match def
    [(Def f args rt info body)
     (set! cfg-global (unweighted-graph/directed '()))
     (define-values (block locals) (explicate-tail body))
     (define f-start 'start
       #;(string->symbol (format "start~a" f))
       )
     (add-vertex! cfg-global `(,f-start . ,block))
     (Def f
       args
       rt
       info
       (CFG (get-vertices cfg-global)))]))

;; explicate-control : R1 -> C0
(define (explicate-control p)
  (match p
    [(ProgramDefs info defs)
     (define exp-defs
       (map explicate-def defs))
     (ProgramDefs info exp-defs)]))

(define (remove-ht-expr expr)
  (cond
    [(HasType? expr) (remove-ht-expr (get-expr expr))]
    [(Prim? expr)
     (match expr
       [(Prim op args) (Prim op (map remove-ht-expr args))])]
    [else expr]))


(define (uncover-locals-def def)
  (match def
    [(Def f (and args `([,xs : ,ts] ...)) rt `((locals . ,locals)) body)
     (define proper-locals
       (map
        (lambda (ht)
          (cons (get-var-name ht) 'Any))
        locals))
     (set! proper-locals
           (append proper-locals
                   (map cons xs ts)))
     (Def f args rt `((locals . ,proper-locals)) body)]))

(define (uncover-locals p)
  (match p
    [(ProgramDefs info defs)
     (ProgramDefs
      info
      (map uncover-locals-def defs))]))


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
    [(Reg r)
     (or (eq? r var2)
         (and (Reg? var2)
              (eq? r (Reg-name var2))))]
    [y
     #:when (symbol? y)
     (vars-eq? (Var y) var2)]
    [whatever #f]))

; select instructions for atoms
(define (si-atm atm) (match atm
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
         (bitwise-ior 1 pm-d)
         pm-d)]))

; select instructions for statements
(define (si-stmt stmt)
  (match stmt
    [(Collect n-bytes)
     (list (Instr 'movq (list (Reg 'r15) (Reg 'rdi)))
           (Instr 'movq (list (Imm n-bytes) (Reg 'rsi)))
           (Callq 'collect 2))]
    [(Assign var expr)
     (match expr
       [(Var x) (list (Instr 'movq (list (Var x) var)))]
       [(Int n) (list (Instr 'movq (list (Imm n) var)))]
       [(Void) (list (Instr 'movq (list (si-atm expr) var)))]
       [(Bool b) (list (Instr 'movq (list (si-atm expr) var)))]
       [(FunRef f) (list (Instr 'leaq (list (FunRef f) var)))]
       [(Call f args)
        ; TODO if all hope is lost look here
        ; (define fun-name (match f [(Var x) x] [(FunRef f_) f_]))
        (define-values (used-regs _) (first-n (length args) param-regs))
        (append
         (for/list
             ([arg-exp args]
              [reg used-regs])
           (Instr 'movq (list (si-atm arg-exp) (Reg reg))))
         (list (IndirectCallq f (length args))
               (Instr 'movq (list (Reg 'rax) var))))]
       [(GlobalValue name) (list (Instr 'movq (list (si-atm expr) var)))]
       ; can't really assign collect to anything, as per syntax in book
       [(Collect n-bytes)
        (si-stmt expr)]
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
              (Instr 'movq (list (Deref 'r11 (* 8 (add1 n))) var)))]
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
        ; Need to watch out for immediates (can be the case where only e2 is.)
        (if (or (Imm? e1-si) (Imm? e2-si))
            (let ([to-move (if (Imm? e1-si) e1-si e2-si)]
                  [cmp-before (if (Imm? e1-si) e2-si (Reg 'rax))]
                  [cmp-after (if (Imm? e1-si) (Reg' rax) e1-si)])
              (list (Instr 'movq (list to-move (Reg 'rax)))
                    (Instr 'cmpq (list cmp-before cmp-after))
                    (Instr 'set (list 'l (ByteReg 'al)))
                    (Instr 'movzbq (list (ByteReg 'al) var))))
            (list (Instr 'cmpq (list e2-si e1-si))
                  (Instr 'set (list 'l (ByteReg 'al)))
                  (Instr 'movzbq (list (ByteReg 'al) var))))]
       [(Prim 'eq? (list e1 e2))
        (define e1-si (si-atm e1))
        (define e2-si (si-atm e2))
        (if (or (Imm? e1-si) (Imm? e2-si))
            (let ([to-move (if (Imm? e1-si) e1-si e2-si)]
                  [cmp-before (if (Imm? e1-si) e2-si (Reg 'rax))]
                  [cmp-after (if (Imm? e1-si) (Reg' rax) e1-si)])
              (list (Instr 'movq (list to-move (Reg 'rax)))
                    (Instr 'cmpq (list cmp-before cmp-after))
                    (Instr 'set (list 'e (ByteReg 'al)))
                    (Instr 'movzbq (list (ByteReg 'al) var))))
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
        (list (Callq 'read_int 0)
              (Instr 'movq (list (Reg 'rax) var)))]
       [(Prim 'make-any (list e (Int ttag)))
        (define instrOr (Instr 'orq (list (Imm ttag) var)))
        (define end (if (or (eq? ttag 2) (eq? ttag 3))
                        instrOr
                        (cons (Instr 'salq (list Imm 3) var) instrOr)))
        (cons (Instr 'movq (list e var)) end)]
       [(Prim 'tag-of-any (list e))
        (list (Instr 'movq (list e var))
              (Instr 'andq (list (Imm 7) var)))]
       [(ValueOf e ftype)
        (if (or (is-vector? ftype) (is-function-type? ftype))
            (list (Instr 'movq (list (Imm -8) var))
                  (Instr 'andq (list e var)))
            (list (Instr 'movq (list e var))
                  (Instr 'sarq (list (Imm 3) var))))])]))

; select instructions for tails
; gives a non-empty list of instr
(define (si-tail tail)
  (match tail
    [(Goto label)
     (list (Jmp label))]
    [(Exit)
     (list
      (Instr 'movq (list (Imm -1) (Reg 'rdi)))
      (Callq 'exit 0))]
    [(IfStmt (Prim cmp (list e1 e2)) (Goto label-1) (Goto label-2))
     (define cc
       (match cmp
         ['eq? 'e]
         ['< 'l]))
     (define e1-si (si-atm e1))
     (define e2-si (si-atm e2))
     (if (or (Imm? e1-si) (Imm? e2-si))
         (let ([to-move (if (Imm? e1-si) e1-si e2-si)]
               [cmp-before (if (Imm? e1-si) e2-si (Reg 'rax))]
               [cmp-after (if (Imm? e1-si) (Reg' rax) e1-si)])
           (list (Instr 'movq (list to-move (Reg 'rax)))
                 (Instr 'cmpq (list cmp-before cmp-after))
                 (JmpIf cc label-1)
                 (Jmp label-2)))
         (list (Instr 'cmpq (list e2-si e1-si))
               (JmpIf cc label-1)
               (Jmp label-2)))]
    [(TailCall f args)
     (define-values (used-regs _) (first-n (length args) param-regs))
     (append
      (for/list
          ([arg-exp args]
           [reg used-regs])
        (Instr 'movq (list (si-atm arg-exp) (Reg reg))))
      (list (TailJmp f (length args))))]
    [(Return expr)
     (append (si-stmt (Assign (Reg 'rax) expr))
             (list (Jmp 'conclusion)))]
    [(Seq stmt tail-d)
     (append (si-stmt stmt)
             (si-tail tail-d))]))

(define (si-start start-block xs)
  (begin
    (define si-rest (si-tail start-block))
    (define-values (used-regs _)
      (first-n (length xs) param-regs))
    (append (for/list
                ([x xs]
                 [reg used-regs])
              (Instr 'movq (list (Reg reg) (Var x))))
            si-rest)))

(define (si-def def)
  (match def
    [(Def f (and args `([,xs : ,ts] ...)) rt
       (and info `((locals . ,locals)))
       (CFG `((,labels . ,blocks) ...)))
     (Def f '() rt info ; info may change
       (CFG
        (for/list ([label labels]
                   [block blocks])
          (let ([fn (if (eq? label 'start
                             #;(string->symbol (format "start~a" f))
                             )
                        (lambda (b) (si-start b xs))
                        si-tail)])
            `(,label . ,(Block '() (fn block)))))))]))

;; select-instructions : C0 -> pseudo-x86
(define (select-instructions p)
  (match p
    [(ProgramDefs info defs)
     (ProgramDefs info (map si-def defs))]))

; removed 'rax
(define caller-saved (list 'rdx 'rcx 'rsi 'rdi 'r8 'r9 'r10 'r11))
; membership predicate
(define (caller-saved? r)
  (not (not (memv r caller-saved))))

(define callee-saved (list 'rsp 'rbp 'rbx 'r12 'r13 'r14 'r15))
(define callee-saved-to-save (list 'rbp 'rbx 'r12 'r13 'r14))
; membership predicate
(define (callee-saved? r)
  (not (not (memv r callee-saved))))


; which operations read/write (r/w) each arg
; movq: r w
; addq: r rw
; negq: rw
; callq: u what

(define (interferable? arg)
  (or (Var? arg)
      (Reg? arg)))

; (values (write args) (read args))
(define (get-write/read instr)
  (match instr
    [(Instr 'leaq (list arg1 arg2))
     (values (filter interferable? (list arg2))
             (filter interferable? (list arg1)))]
    [(Instr 'addq (list arg1 arg2))
     (values (filter interferable? (list arg2))
             (filter interferable? (list arg1 arg2)))]
    [(Instr 'movq (list arg1 arg2))
     (values (filter interferable? (list arg2))
             (filter interferable? (list arg1)))]
    [(Instr 'negq (list arg))
     (values (filter interferable? (list arg))
             (filter interferable? (list arg)))]
    [(Instr 'xorq (list arg1 arg2))
     (values (filter interferable? (list arg2))
             (filter interferable? (list arg1 arg2)))]
    [(Instr 'cmpq (list arg1 arg2))
     (values '()
             (filter interferable? (list arg1 arg2)))]
    [(Instr 'set (list cc arg))
     (values '() '())]
    [(Instr 'movzbq (list arg1 arg2))
     (values (filter interferable? (list arg2))
             '())]
    [(IndirectCallq calling arity)
     (values '()
             (filter interferable? (list calling)))]
    [(TailJmp jmp-to arity)
     (values '()
             (filter interferable? (list jmp-to)))]
    [(Jmp label) (values '() '())]
    [(JmpIf cc label) (values '() '())]
    [(Callq label arity) (values '() '())]))

; 'fairly simple' - kevin cao's last words
; return a (list of (lists of variables that are live at that point))
(define (liveness instr+ lv-after)
  (match instr+
    ['() `(,lv-after)]
    [(cons instr-a instr-d)
     (define-values (write-args read-args) (get-write/read instr-a))
     (define liveness-d (liveness instr-d lv-after))
     (define liveness-a
       (set-union (set-subtract (car liveness-d) write-args)
                  read-args))
     (cons liveness-a
           liveness-d)]))

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
          (add-vertex! new-g (car v-data))
          (let* ([block (cdr v-data)]
                 [blonk (match block [(Block bl-info instr+) instr+])]
                 [v (car v-data)]
                 [neighbors (get-neighbors* blonk)])
            (for/list ([u neighbors])
              (add-directed-edge! new-g v u)))))
      new-g)))

(define (uncover-live-def def)
  (match def
    [(Def f '() rt info (CFG e))
     (define cfg-with-edges
       (isomorph e))
     (define cfg-we-tp (transpose cfg-with-edges))
     (define reverse-top-order
       (tsort cfg-we-tp))
     (Def f '() rt info
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
                #;
                neighbors
                (filter (lambda (vtx) (not (eq? vtx 'conclusion)))
                        neighbors)))
             (define liveness-blk (liveness instr+ live-after))
             (define blonk (Block liveness-blk instr+))
             (cons `(,label . ,blonk) cfg)))
         '()
         ; remove conclusion from liveness analysis since we have not
         ; created it yet
         (filter (lambda (vtx) (not (eq? vtx 'conclusion)))
                 reverse-top-order))))]))

(define (uncover-live p)
  (match p
    [(ProgramDefs info defs)
     (ProgramDefs info (map uncover-live-def defs))]))

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
    [(cons (TailJmp jmp-to arity) instr-d)
     base-g]
    [(cons (IndirectCallq calling arity) instr-d)
     (define graph-d
       (interference-graph (cdr bl-info) instr-d base-g types))
     (for/list ([reg caller-saved])
       (for/list ([var (car bl-info)])
         (and (Var? var)
              (add-edge! graph-d (Reg reg) var))))
     ; assume that the function call WILL use collect
     (for/list ([reg callee-saved])
       (for/list ([var (car bl-info)])
         (and (Var? var)
              (let ([type (cdr (assv (get-var-name var) types))])
                (if (or (is-vector? type) (is-any? type))
                    (add-edge! graph-d var (Reg reg))
                    (void))))))
     graph-d]
    [(cons (Callq label arity) instr-d)
     (define graph-d
       (interference-graph (cdr bl-info) instr-d base-g types))
     (for/list ([reg caller-saved])
       (for/list ([var (car bl-info)])
         (add-edge! graph-d (Reg reg) var)))
     (if (eq? label 'collect)
         (for/list ([reg callee-saved])
           (for/list ([var (car bl-info)])
             (and (Var? var)
                  (let* ([in-types? (assv (get-var-name var) types)]
                         [type (if (not in-types?)
                                   (error (format "var ~a, types ~a" var types))
                                   (cdr in-types?))])
                    (if (or (is-vector? type) (is-any? type))
                        (add-edge! graph-d var (Reg reg))
                        (void))))))
         (void))
     graph-d]
    [(cons instr-a instr-d)
     (let ([graph-d (interference-graph (cdr bl-info) instr-d base-g types)])
       (match instr-a
         [(Instr 'leaq (list arg1 arg2))
          (add-all-var-args (list arg1 arg2) graph-d)
          (if (interferable? arg2)
              (for/list ([var (car bl-info)])
                (if (or (vars-eq? arg2 var)
                        (vars-eq? arg1 var))
                    'no-interference-leaq
                    (add-edge! graph-d arg2 var)))
              'arg2-is-rax-leaq)
          graph-d]
         [(Instr 'negq (list arg))
          (add-all-var-args (list arg) graph-d)
          (if (interferable? arg)
              (for/list ([var (car bl-info)])
                (if (not (vars-eq? arg var))
                    (add-edge! graph-d arg var)
                    'no-interference-negq))
              'arg-is-rax-negq)
          graph-d]
         [(Instr 'addq (list arg1 arg2))
          (add-all-var-args (list arg1 arg2) graph-d)
          (if (interferable? arg2)
              (for/list ([var (car bl-info)])
                (if (not (vars-eq? arg2 var))
                    (add-edge! graph-d arg2 var)
                    'no-interference-addq))
              'arg2-is-rax-addq)
          graph-d]
         [(Instr 'movq (list arg1 arg2))
          (add-all-var-args (list arg1 arg2) graph-d)
          (if (interferable? arg2)
              (for/list ([var (car bl-info)])
                (if (or (vars-eq? arg2 var)
                        (vars-eq? arg1 var))
                    'no-interference-movq
                    (add-edge! graph-d arg2 var)))
              'arg2-is-rax-movq)
          graph-d]
         [(Instr 'xorq (list arg1 arg2))
          (add-all-var-args (list arg1 arg2) graph-d)
          (if (interferable? arg2)
              (for/list ([var (car bl-info)])
                (if (not (vars-eq? arg2 var))
                    (add-edge! graph-d arg2 var)
                    'no-interference-xorq))
              'arg2-is-rax-xorq)
          graph-d]
         [(Instr 'cmpq (list arg1 arg2))
          'cmpq-writes-to-nothing
          graph-d]
         [(Instr 'set (list cc arg))
          (add-all-var-args (list cc arg) graph-d)
          (if (interferable? arg)
              (for/list ([var (car bl-info)])
                (if (vars-eq? arg var)
                    'no-interference-set
                    (add-edge! graph-d arg var)))
              'arg2-is-rax-set)
          graph-d]
         [(Instr 'movzbq (list arg1 arg2))
          (add-all-var-args (list arg1 arg2) graph-d)
          (if (interferable? arg2)
              (for/list ([var (car bl-info)])
                (if (or (vars-eq? arg2 var)
                        (vars-eq? arg1 var))
                    'no-interference-movzbq
                    (add-edge! graph-d arg2 var)))
              'arg2-is-rax-movzbq)
          graph-d]))]))

; original map-lambda
(define (vector-interference bl-info types g)
  (for/list ([lv-set bl-info])
    (for/list ([var lv-set])
      (let ([type (cdr (assv var types))])
        (if (is-vector? type)
            (for/list ([reg callee-saved])
              (add-edge! g (Var var) (Reg reg)))
            (void))))))

(define (build-intf-def def)
  (match def
    [(Def f '() rt (and info `((locals . ,locals)))
       (CFG (and e `((,labels . ,blocks) ...))))
     (define intf-graph
       (foldr
        (lambda (label-tail acc-graph)
          (define label
            (car label-tail))
          (define instr+
            (match (cdr label-tail)
              [(Block bl-info instr+) instr+]))
          (define bl-info
            (match (cdr label-tail)
              [(Block bl-info instr+) bl-info]))
          (define new-g
            (interference-graph (cdr bl-info) instr+ acc-graph locals))
          (map
           (lambda (var)
             (add-vertex! new-g var))
           (car bl-info))
          new-g)
        (uwu '())
        e))
     (Def f '() rt (cons `(conflicts . ,intf-graph) info)
       (CFG e))]))

(define (build-interference p)
  (match p
    [(ProgramDefs info defs)
     (ProgramDefs info (map build-intf-def defs))]))

(define uncolored -1)
(define (uncolored? color) (eq? color uncolored))
; returns an association list mapping variables to:
; (Pair number saturation) where saturation is a set of numbers/colors
; that this variable cannot have
; graph -> (listof (pairof var (pairof color saturation)))
(define (initial-sat-avail g)
  (map (lambda (v)
         (define v-edges
           (filter
            (lambda (edge) (vars-eq? (car edge) v))
            (get-edges g)))
         (define v-neighbors (map cadr v-edges))
         (define v-regs
           (filter
            (lambda (v)
              (and (Reg? v)
                   (assv (Reg-name v) usable-regs-to-color)))
            v-neighbors))
         (define v-saturations
           (map
            (lambda (reg)
              (define collll (assv (Reg-name reg) usable-regs-to-color))
              (cdr collll))
            v-regs))
         ; we want to make sure that each v cannot go in any registers to
         ; which they already have an edge, no matter what
         `(,v . (,uncolored . ,v-saturations)))
       (filter Var? (get-vertices g))))

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

; add color to saturation lists of all neighbors v of u
(define (saturate-neighbors g saturations u color)
  (begin
    (define edges (get-edges g))
    (define u-neighbors (filter (lambda (edge) (vars-eq? u (car edge))) edges))
    (foldr
     (lambda (u-v sats)
       (saturate-neighbor sats (cadr u-v) color))
     saturations
     u-neighbors)))

(define (pe e)
  (begin (displayln e)
         e))

; one iteration of the graph coloring alg
(define (assign-new-color-and-saturate-neighbors g saturations u)
  (begin
    (define new-sats (assign-new-color saturations u))
    (define color
      (cadr (assf (lambda (var) (vars-eq? u var))
                  new-sats)))
    (saturate-neighbors g new-sats u color)))

(define ancasn assign-new-color-and-saturate-neighbors)

; set-subtract uses eqv?, not vars-eq?
(define (remove-u vertices u)
  (match vertices
    ['() '()]
    [`(,vtx . ,vertices-d)
     (if (vars-eq? vtx u)
         vertices-d
         `(,vtx . ,(remove-u vertices-d u)))]))

(define (remove-sat-set sat)
  (match sat
    [`(,var . (,color . ,sat-set))
     `(,var . ,color)]))

; anything higher than 11 (we use 0,...,11 for registers) will be a stack loc
; interference-graph * list-of-program-vars -> (listof (pairof var color))
(define (color-mappings g vars)
  (begin
    (define saturations (initial-sat-avail g))
    (define W (get-vertices g))
    (define totally-saturated
      (foldr
       (lambda (_v sats)
         (define u (select-most-saturated sats))
         (define u-label (car u))
         ; self-documenting code
         (ancasn g sats u-label))
       saturations
       (filter Var? W)))
    ; get rid of extra info after coloring the graph
    (map remove-sat-set totally-saturated)))


(define usable-regs
  (list
   `(0 . rdx)
   `(1 . rcx)
   `(2 . rsi)
   `(3 . rdi)
   `(4 . r8)
   `(5 . r9)
   `(6 . r10)
   ;`(7 . r11)
   `(7 . rbx)
   `(8 . r12)
   `(9 . r13)
   `(10 . r14)
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
       (or (eq? 'Vector (car t))
           (eq? 'Vectorof (car t)))))

(define (is-any? t)
  (eq? 'Any t))

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
       (if (or (is-vector? (cdr var-type)) (is-any? (cdr var-type)))
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
     (define arg-to-color
       (lambda (arg)
         (if (Var? arg)
             (color-to-location
              ; assv uses eqv instead of our vars-eq? :|
              ; the cdr is the color
              (let ([x (assf (lambda (var) (vars-eq? var arg))
                             color-map)])
                ; HOW IS THIS POSSIBLE
                (if (eqv? x #f)
                    (raise (format "var ~a not found" x))
                    (cdr x)))
              type-mappings
              arg)
             arg)))
     (define new-instr-a
       (match instr-a
         [(Instr op args)
          (Instr op (map arg-to-color args))]
         [(TailJmp jmp-to arity)
          (TailJmp (arg-to-color jmp-to) arity)]
         [(IndirectCallq calling arity
                         )
          (IndirectCallq (arg-to-color calling) arity)]
         [whatever
          instr-a]))
     (define new-instr-d
       (assign-regs-helper instr-d color-map type-mappings))
     (cons new-instr-a new-instr-d)]))

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


(define (allocate-regs-def def)
  (match def
    [(Def f '() rt
       (list `(conflicts . ,intf-graph)
             `(locals . ,local-vars))
       (CFG nodes))

     (set! color-to-call-stack '())
     (set! call-stack-vars-needed 0)

     (set! color-to-root-stack '())
     (set! root-stack-vars-needed 0)

     (define color-map (color-mappings intf-graph local-vars))
     (define cfg-nodes
       (for/list ([node nodes])
         (assign-regs-or-stack node color-map local-vars)))
     ; don't need the intf-graph anymore
     (define spills
       `(,call-stack-vars-needed . ,root-stack-vars-needed))
     (Def f '() rt
       (list `(num-spills . ,spills))
       (CFG
        (map
         (lambda (lbl-blk)
           (define lbl (car lbl-blk))
           (define blk (cdr lbl-blk))
           (define new-blk
             (match blk
               [(Block bl-info instr+)
                (Block '() instr+)]))
           `(,lbl . ,new-blk))
         cfg-nodes)))]))

; TODO: we're giving positive stack locations, which we should not.
; this has to do with some vertices being uncolored. maybe we should
; more closely follow the "while W =/= empty set", "W <- W \ {u}" idea
; from the book? to ensure that we do not saturate a vertex's neighbors twice
;
; see: color-mappings
(define (allocate-registers p)
  (match p
    [(ProgramDefs info defs)
     (ProgramDefs info (map allocate-regs-def defs))]))

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

(define (mem-ref? arg)
  (or (Deref? arg) (Global? arg)))

(define (pi-helper p)
  (match p
    ['() '()]
    [`(,instr-a . ,instr-d)
     (match instr-a
       [(TailJmp jmp-to arity)
        (if (and (Reg? jmp-to)
                 (eq? 'rax (Reg-name jmp-to)))
            (cons instr-a
                  (pi-helper instr-d))
            (append (list (Instr 'movq (list jmp-to (Reg 'rax)))
                          (TailJmp (Reg 'rax) arity))
                    (pi-helper instr-d)))]
       [(Instr 'leaq (list lbl into))
        (if (mem-ref? into)
            (append (list (Instr 'leaq (list lbl (Reg 'rax)))
                          (Instr 'movq (list (Reg 'rax) into)))
                    (pi-helper instr-d))
            (cons instr-a
                  (pi-helper instr-d)))]
       [(Instr op (list arg))
        (cons instr-a
              (pi-helper instr-d))]
       [(Instr op (list arg1 arg2))
        (if (and (mem-ref? arg1)
                 (mem-ref? arg2))
            (append (list (Instr 'movq (list arg1 (Reg 'rax)))
                          (Instr op (list (Reg 'rax) arg2)))
                    (pi-helper instr-d))
            (cons instr-a
                  (pi-helper instr-d)))]
       [whatever-else
        (cons instr-a
              (pi-helper instr-d))])]))

(define (pi-def def)
  (match def
    [(Def f '() rt
       `((num-spills . (,call-spills . ,root-spills)))
       (CFG nodes))
     (Def f '() rt
       `((stack-space . ,(* 8 call-spills))
         (root-stack-space . ,(* 8 root-spills)))
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

;; patch-instructions : psuedo-x86 -> x86
(define (patch-instructions p)
  (match p
    [(ProgramDefs info defs)
     (ProgramDefs info (map pi-def defs))]))


(define (os-label label)
  (match (system-type 'os)
    ['macosx (format "_~a" (remove-dash label))]
    [other (format "~a" (remove-dash label))]))

(define indent "       ")
(define newline "\n")


(define (print-conclusion bytes-needed root-bytes-needed def-label)
  (let* ([blk-label (format "~aconclusion" def-label)]
         [blk-label (string->symbol blk-label)]
         [blk-label (os-label blk-label)])
    (string-append
     blk-label ":" newline
     indent (print-instr
             (Instr 'subq (list (Imm root-bytes-needed)
                                (Reg 'r15)))
             def-label -69 -420)
     newline
     indent (print-instr
             (Instr 'addq (list (Imm bytes-needed)
                                (Reg 'rsp)))
             def-label -69 -420) newline
     ; indent "popq   %rbp" newline
     indent (print-callee-saved-regs #f)
     "retq")))

; save? is a boolean; if true, pushq, if false, popq in reverse order
(define (print-callee-saved-regs save?)
  (if save?
      (foldr
       (lambda (next-reg string-so-far)
         (string-append (format "pushq  %~a" next-reg) newline indent
                        string-so-far))
       ""
       callee-saved-to-save)
      ; if restore, ie if not save
      (foldr
       (lambda (next-reg string-so-far)
         (string-append (format "popq   %~a" next-reg) newline indent
                        string-so-far))
       ""
       (reverse callee-saved-to-save))))

(define (allocate-r15 rbn)
  (foldr
   (lambda (n str)
     (string-append
      indent
      (print-instr
       (Instr 'movq (list (Imm 0)
                          (Deref 'r15 (* n 8))))
       'dummy-label -69 -420) newline
      str))
   ""
   (range (/ rbn 8))))

(define (print-main bytes-needed root-bytes-needed def-label is-main-main?)
  (let* ([blk-label (if is-main-main? 'main def-label)]
         [blk-label (os-label blk-label)])
    (string-append
     #;indent ".globl " blk-label newline
     #;indent ".align 16" newline
     blk-label ":" newline
     ; odd number of callee-saved and subq one register --> boom
     ; it's 16-aligned
     indent (print-callee-saved-regs #t)
     ; indent "pushq  %rbp" newline
     "movq   %rsp, %rbp" newline
     indent (format "subq   $~a, %rsp" bytes-needed) newline
     (if is-main-main? (string-append main-main newline) "")
     (allocate-r15 root-bytes-needed)
     indent (print-instr
             (Instr 'addq
                    (list (Imm root-bytes-needed) (Reg 'r15)))
             'dummy-label -69 -420) newline
     indent (print-instr (Jmp 'start) def-label
                         bytes-needed root-bytes-needed))))

(define (print-arg arg)
  (match arg
    ; Not sure if we should prefix these names with _?
    [(FunRef f) (format "~a(%rip)" (os-label f))]
    [(Global name) (format "~a(%rip)" (os-label name))]
    [(Imm n) (format "$~a" n)]
    [(Reg reg) (format "%~a" reg)]
    [(ByteReg bytereg) (format "%~a" bytereg)]
    [(Deref reg bytes-needed)
     (format "~a(%~a)" bytes-needed reg)]))

(define (print-instr instr def-label bn rbn)
  (match instr
    [(Instr 'set (list cc arg))
     (format "set~a   ~a" cc (print-arg arg))]
    [(Instr op (list arg1 arg2))
     (format "~a   ~a, ~a" op (print-arg arg1) (print-arg arg2))]
    [(Instr op (list arg))
     (format "~a   ~a" op (print-arg arg))]
    [(Jmp label)
     (format "jmp ~a" (os-label (symbol-append def-label label)))]
    [(JmpIf cc label)
     (format "j~a ~a" cc (os-label (symbol-append def-label label)))]
    [(TailJmp jmp-to arity)
     (string-append
      (print-instr
       (Instr 'subq (list (Imm rbn)
                          (Reg 'r15)))
       def-label -69 -420)
      newline
      indent (print-instr
              (Instr 'addq (list (Imm bn)
                                 (Reg 'rsp)))
              def-label -69 -420) newline
      indent (print-callee-saved-regs #f)
      (format "jmp *%~a" (Reg-name jmp-to)))]
    [(IndirectCallq calling arity)
     (format "callq *~a" (print-arg calling))]
    [(Callq label arity) (format "callq ~a" (os-label label))]))

(define main-main
  (string-append
   indent (print-instr
           (Instr 'movq (list (Imm 16384) (Reg 'rdi)))
           'dummylabel -69 -420) newline
   indent (print-instr
           (Instr 'movq (list (Imm 16384) (Reg 'rsi)))
           'dummylabel -69 -420) newline
   indent (print-instr (Callq 'initialize 2) 'dummylabel -69 -420) newline
   indent (print-instr
           (Instr 'movq (list (Global 'rootstack_begin)
                              (Reg 'r15)))
           'dummylabel -69 -420)))

(define (print-blk label block def-label bn rbn)
  (let* ([instr+ (match block [(Block _ instructions) instructions])]
         [blk-label (format "~a~a" def-label label)]
         [blk-label (string->symbol blk-label)]
         [blk-label (os-label blk-label)])
    (string-append
     blk-label ":" newline
     (foldr (lambda (instr so-far)
              (string-append indent (print-instr instr def-label bn rbn)
                             newline
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

(define (print-def def)
  (match def
    [(Def f '() rt
       `((stack-space . ,bytes-needed)
         (root-stack-space . ,root-bytes-needed))
       (CFG blocks))
     (set! f (remove-dash f))
     (define bn (actual-bytes-needed bytes-needed))
     (define rbn (actual-bytes-needed root-bytes-needed))
     (define is-main-main?
       (and (>= (string-length (symbol->string f)) 4)
            (eqv? 'main
                  (string->symbol (substring (symbol->string f) 0 4)))))
     (string-append
      (foldr
       (lambda (lbl-blk x86)
         (string-append
          (print-blk (car lbl-blk) (cdr lbl-blk) f bn rbn)
          newline
          x86))
       ""
       blocks)
      newline
      #;(print-start start-block)
      newline
      (print-main bn rbn f is-main-main?)
      newline
      (print-conclusion bn rbn f))]))

;; print-x86 : x86 -> string
(define (print-x86 p)
  (match p
    [(ProgramDefs info defs)
     (foldr
      (lambda (def str)
        (string-append
         (print-def def)
         newline
         str))
      ""
      defs)]))

#;
get-free-vars

; all the passes needed to be used in (t .)
(define test-passes
  (list
   #;type-check
   translateR7R6
   shrink
   uniquify
   reveal-functions
   convert-to-closures
   limit-functions
   expose-allocation
   remove-complex-opera*
   explicate-control
   type-check-C5
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
(define (t p_ defs)
  (testttt (parse-program
            `(program
              ()
              ,defs
              ,p_))
           test-passes))

; helper, just does natural recursion
(define (testttt p passes)
  (match passes
    ['() p]
    [`(,pass-a . ,passes-d)
     (testttt (pass-a p) passes-d)]))

; our opportunity for style/coolness points
(define (compile program passes)
  (match passes
    ['() program]
    [`(,pass-a . ,passes-d)
     (compile (pass-a program) passes-d)]))

(define (p prog defs)
  (displayln (t prog defs)))

(define vec-vec-test
  '(vector-ref (vector-ref (vector (vector 42)) 0) 0))

(define big-vec-test
  '(let ([v0 (vector 0 1 2 3 4 5 6 7 8 9
                     10 11 12 13 14 15 16 17 18 19
                     20 21 22 23 24 25 26 27 28 29
                     30 31 32 33 34 35 36 37 38 39
                     40 41 42 43 44 45 46 47 48 49)])
     (vector-ref v0 42)))
