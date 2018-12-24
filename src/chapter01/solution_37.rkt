#lang racket/base

(define (cont-frac-rec n d k)
	(define (inner counter)
		(if (>= counter k)
			(/ (n k) (d k))
			(/ (n k) (+ (d k) (inner (+ counter 1))))))
	(inner 1))

(define (cont-frac n d k)
	(define (inner result term)
		(if (>= term k)
			result
			(inner (/ (n k) (+ (d k) result)) (+ term 1))))
	(inner 0 0))	

(provide cont-frac-rec cont-frac)	