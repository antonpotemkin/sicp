#lang racket/base

(define tolerance 0.0001)

(define (fixed-point f first-guess)
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try guess)
		(let ((next (f guess)))
			(newline)
			(display next)
			(if (close-enough? guess next)
				next
				(try next))))
	(display first-guess)			
	(try first-guess))

(define (averange x y)
	(/ (+ x y) 2))

(provide fixed-point averange)
