#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
;(require "interp-R1.rkt");(require "interp-C0.rkt")
(require "interp-R4.rkt")
; (require "interp-C2.rkt")
(require "interp.rkt")
(require "compiler.rkt")
; (debug-level 1)
(AST-output-syntax 'abstract-syntax)

(define interp-R-after-expose
  (let ([interp (new interp-R4-class)])
    (send interp interp-scheme '())))

(define interp-F1
  (lambda (p)
    ((send (new interp-R4-class) interp-F '()) p)))

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"
(define r4-passes
  `( ("type-check" ,type-check ,interp-R4)
     ("shrink" ,shrink ,interp-R4)
     ("uniquify" ,uniquify ,interp-R4)
     ("reveal-functions" ,reveal-functions ,interp-F1)
     ("limit-functions" ,limit-functions ,interp-F1)
     ("expose allocation" ,expose-allocation ,interp-F1)
     ("remove complex opera*" ,remove-complex-opera* ,interp-F1)
     ("explicate control" ,explicate-control ,interp-C3)
     ("uncover locals" ,uncover-locals ,interp-C3)
     ("instruction selection" ,select-instructions ,interp-pseudo-x86-3)
     ("uncover-live" ,uncover-live ,interp-pseudo-x86-3)
     ("build-interference" ,build-interference ,interp-pseudo-x86-3)
     ("allocate-registers" ,allocate-registers ,interp-x86-3)
     ("patch instructions" ,patch-instructions ,interp-x86-3)
     ("print x86" ,print-x86 #f)
     ))

(define all-tests
  (map (lambda (p) (car (string-split (path->string p) ".")))
       (filter (lambda (p)
                 (string=? (cadr (string-split (path->string p) ".")) "rkt"))
               (directory-list (build-path (current-directory) "tests")))))

(define (tests-for r)
  (map (lambda (p)
         (cadr (string-split p "_")))
       (filter
        (lambda (p)
          (string=? r (car (string-split p "_"))))
        all-tests)))

; (interp-tests "r3" #f r3-passes interp-R3 "r3" (tests-for "r3"))
(compiler-tests "r4" #f r4-passes "r4" (tests-for "r4"))
