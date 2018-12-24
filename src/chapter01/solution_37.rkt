#lang racket/base

(define (cont-frac-rec n d k)
	(define (inner counter)
		(if (= counter 0)
			(/ (n counter) (d counter))
			(/ (n counter) (+ (d counter) (inner (- counter 1))))))
	(inner k))

(define (cont-frac n d k)
	(define (inner result term)
		(if (= term 0)
			result
			(inner (/ (n term) (+ (d term) result)) (- term 1))))
	(inner (/ (n k) (d k)) (- k 1)))

(provide cont-frac-rec cont-frac)	