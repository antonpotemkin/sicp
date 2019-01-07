#lang racket/base

(define tolerance 0.0001)

(define (average x y) (/ (+ x y) 2))

(define (iterative-improve close-enough? improve)
		(define (try guess)
			(let ((next (improve guess)))
				(if (close-enough? guess next)
					next
					(try next))))
		try)

(define (sqrt x)
	((iterative-improve (lambda (guess next) 
                              (< (abs (- (* guess guess) x)) 
                                 tolerance)) 
                      (lambda (guess) 
                              (average guess (/ x guess)))) 1.0))

(provide sqrt)

(define (fixed-point f first-guess)
	((iterative-improve (lambda (guess next) 
                              (< (abs (- guess next)) 
                                 tolerance)) 
                      f) first-guess))
