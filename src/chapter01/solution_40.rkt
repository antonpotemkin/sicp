#lang racket/base

(require rackunit "../../src/chapter01/solution_35.rkt")
; import fix-point

(define dx 0.00001)

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define (newton-transform g)
	(lambda (x)
    	(- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
	(fixed-point (newton-transform g) guess))

(define (cubic a b c)
	(lambda (x)
		(+ (* x x x) (* a x x) (* b x) c)))

(define (solution a b c)
	(newtons-method (cubic a b c) 1))

(provide solution)	