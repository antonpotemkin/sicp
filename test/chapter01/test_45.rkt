#lang racket/base

(require rackunit "../../src/chapter01/solution_45.rkt")


(define (sqrt x)
	(lambda (y) (/ x y)))

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (cube-root x)
	(lambda (y) (/ x (square y))))

(define (quatr-root x)
	(lambda (y) (/ x (cube y))))

(check-equal? (fixed-point-func sqrt 25) 5.000000000053722)
(check-equal? (fixed-point-func cube-root 27) 3.000022143521597)
; (check-equal? (fixed-point-func quatr-root 81) 3.000022143521597) ; infinite loop
; we need log2 n-root repeated func average-damp
(check-equal? (n-root 4 725) 5.189009931158537)

