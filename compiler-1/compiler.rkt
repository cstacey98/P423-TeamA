#lang racket
(require racket/fixnum)

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