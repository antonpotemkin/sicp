#lang racket/base

(require rackunit "../../src/chapter01/solution_41.rkt")

(define (inc a)
	(+ a 1))

(check-equal? (inc 1) 2)
(check-equal? ((double inc) 1) 3)
; (inc (inc x))
(check-equal? (((double double) inc) 5) 9)
; (double (func (func x)))
; ((func (func (func (func x)))
(check-equal? (((double (double double)) inc) 5) 21)

; (double (func (func (func (func x)))))
; each func its (func (func (func (func x))))
