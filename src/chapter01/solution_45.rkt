#lang racket/base

(require rackunit "./solution_43.rkt")
; import repeated

(require rackunit "./solution_35.rkt")
; import fixed-point

(define (averange x y)
	(/ (+ x y) 2))

(define (average-damp f)
	(lambda (x) (averange x (f x))))

(define (fixed-point-func f x)
	(fixed-point (average-damp (f x)) 1.0))

(define (mult x n)
	(define (iter acc count)
		(if (< count 1)
			acc
			(iter (* acc x) (- count 1))))
	(iter 1 n))

(define (log2 n)
	(/ (log n) (log 2)))

(define (n-root n x)
	(define (f y) (/ x (mult y (- n 1))))
	(define count (floor (log2 n)))
	(fixed-point ((repeated average-damp count) f) 1.0))

(provide fixed-point-func n-root)