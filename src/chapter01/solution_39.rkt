#lang racket/base

(require rackunit "../../src/chapter01/solution_37.rkt")

(define (tan-cf x k)
	(define (d i)
		(- (* i 2) 1))
	(define (n i)
		(if (= i 1)
			x
			(- ( * x x))))
	(cont-frac n d k))

(provide tan-cf)	