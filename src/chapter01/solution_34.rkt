#lang racket/base

(define (f g)
	(g 2))

(define (inc a) (+ a a))

(f inc)
;(f f)
;expected procedure that can be applied to arguments
;received procefure that receied procedure