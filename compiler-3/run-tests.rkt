#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
;(require "interp-R1.rkt")
;(require "interp-C0.rkt")
(require "interp-R2.rkt")
(require "interp-C1.rkt")
(require "interp.rkt")
(require "compiler.rkt")
;; (debug-level 1)
;; (AST-output-syntax 'concrete-syntax)

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"
(define r2-passes
  `( ("uniquify" ,uniquify ,interp-R2)
     ("remove complex opera*" ,remove-complex-opera* ,interp-R2)
     ("explicate control" ,explicate-control ,interp-C1)
     ("instruction selection" ,select-instructions ,R2-interp-x86)
     ("uncover-live" ,uncover-live ,R2-interp-x86)
     ("build-interference" ,build-interference ,R2-interp-x86)
     ("allocate-registers" ,allocate-registers ,R2-interp-x86)
     ("patch instructions" ,patch-instructions ,R2-interp-x86)
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

(interp-tests "r2" #f r2-passes interp-R2 "r2" (tests-for "r2"))
(compiler-tests "r2" #f r2-passes "r2" (tests-for "r2"))

