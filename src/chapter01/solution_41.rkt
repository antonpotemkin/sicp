#lang racket/base

(define (double func)
	(lambda (x)
		(func (func x))))


(provide double)	