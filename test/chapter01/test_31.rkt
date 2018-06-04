#lang racket/base

(require rackunit "../../src/chapter01/solution_31.rkt")

(define (identity x) x)
(define (inc n) (+ n 1))
(define (cube n) (* n n n))

(check-equal? (product identity 1 inc 10) 3628800)
(check-equal? (product cube 1 inc 5) 1728000)
(check-equal? (productIter identity 1 inc 10) 3628800)
(check-equal? (productIter cube 1 inc 5) 1728000)
