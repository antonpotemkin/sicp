#lang racket/base

(require rackunit "./solution_42.rkt")
; import compose

(define (repeated func n)
	(if (< n 1)
		(lambda (x) x)
		(compose func (repeated func (- n 1)))))

(provide repeated)
