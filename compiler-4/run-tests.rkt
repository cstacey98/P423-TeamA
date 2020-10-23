#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
;(require "interp-R1.rkt");(require "interp-C0.rkt")
(require "interp-R3.rkt")
; (require "interp-C2.rkt")
(require "interp.rkt")
(require "compiler.rkt")
; (debug-level 4)
(AST-output-syntax 'abstract-syntax)

(define interp-R-after-expose
  (let ([interp (new interp-R3-class)])
    (send interp interp-scheme '())))

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"
(define r3-passes
  `( ("type-check" ,type-check ,interp-R3)
     ("shrink" ,shrink ,interp-R3)
     ("uniquify" ,uniquify ,interp-R3)
     ("expose allocation" ,expose-allocation ,interp-R-after-expose)
     ("remove complex opera*" ,remove-complex-opera* ,interp-R-after-expose)
     ("explicate control" ,explicate-control ,interp-C2)
     ("uncover locals" ,uncover-locals ,interp-C2)
     ("instruction selection" ,select-instructions ,interp-pseudo-x86-2)
     ("uncover-live" ,uncover-live ,interp-pseudo-x86-2)
     ("build-interference" ,build-interference ,interp-pseudo-x86-2)
     ("allocate-registers" ,allocate-registers ,interp-x86-2)
     ("patch instructions" ,patch-instructions ,interp-x86-2)
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
(compiler-tests "r3" #f r3-passes "r3" (tests-for "r3"))

