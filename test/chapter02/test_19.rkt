#lang racket/base

(require rackunit "../../src/chapter02/solution_18.rkt")
(require rackunit "../../src/chapter02/solution_19.rkt")

(define us-coins (list 50 25 10 5 1))
(define us-coins2 (reverse us-coins))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))


(check-equal? (cc 100 us-coins) 292)
(check-equal? (cc 100 us-coins2) 292)
(check-equal? (cc 100 uk-coins) 104561)