#lang racket/base

(require rackunit "../../src/chapter01/solution_22.rkt")
(require rackunit "../../src/chapter01/solution_33.rkt")

(define (identity x) x)
(define (inc n) (+ n 1))

(define (combinerSum a b) (+ a b))
(check-equal? (filtered-accumulate prime? combinerSum 0 identity 2 inc 10) 17)
