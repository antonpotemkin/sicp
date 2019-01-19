#lang racket/base

(require rackunit "../../src/chapter02/solution_06.rkt")

(define zero_plus_one (add-1 zero))
(define one_plus_one (add-1 one))
(define two_plus_one (add-1 two))

(define (add_one x)
	(+ x 1))

(define (same x) x)

(check-equal? ((zero_plus_one add_one) 0) 1)
(check-equal? ((one_plus_one add_one) 0) 2)
(check-equal? ((two_plus_one add_one) 0) 3)
(check-equal? ((two_plus_one add_one) 4) 7)
(check-equal? (((add one one) add_one) 0) 2)
(check-equal? (((add one two) add_one) 0) 3)