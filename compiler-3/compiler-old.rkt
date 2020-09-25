#lang racket
(require racket/fixnum)
;(require racket/dict)

(define (interp-exp env)
  (lambda (e)
    (match e
      [`(Int ,n) n]
      [`(Prim read ())
       (define r (read))
       (cond
         [(fixnum? r) r]
         [else (error 'interp-R1 "expected an integer" r)])]
      [`(Prim - (list ,e))
       (define v ((interp-exp env) e))
       (fx- 0 v)]
      [`(Prim + (list ,e1 ,e2))
       (define v1 ((interp-exp env) e1))
       (define v2 ((interp-exp env) e2))
       (fx+ v1 v2)]
      [`(Var ,x) (dict-ref env x)]
      [`(Let ,x ,e ,body)
       (define new-env (dict-set env x ((interp-exp env) e)))
       ((interp-exp new-env) body)])))


(define (interp-R1 p)
  (match p
    [`(Program ,info ,e) ((interp-exp '()) e)] ))

; Our symtab is going to be an association list
; A table is a [Listof [Pairof Symbol Int]]
; any time you see ,var you should use the unique ,(gensym var)
(define (extend-symtab table var)
  (cons (var . (gensym var))
        table))

(define (search-symtab table var)
  (cdr (assv var table)))

; we offload gensymming to extend-symtab
(define (uniquify-exp symtab)
  (lambda (e)
    (match e
      [`(Var ,x) (search-symtab symtab x)]
      [`(Int ,n) `(Int ,n)]
      [`(Let ,x ,e ,body)
       (let ([e-uniq ((uniquify-exp symtab) e)])
         ((uniquify-exp (extend-symtab symtab x)) body))]
      [`(Prim ,op ,es)
       `(Prim ,op ,(for/list ([e es])
                     ((uniquify-exp symtab) e)))])))

(define (uniquify p)
  (match p
    [`(Program ,info ,e)
     `(Program ,info ,((uniquify-exp '()) e))]))








