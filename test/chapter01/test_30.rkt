#lang racket/base

(require rackunit "../../src/chapter01/solution_30.rkt")

(define (identity x) x)
(define (inc n) (+ n 1))
(define (cube n) (* n n n))

(check-equal? (sum identity 1 inc 10) 55)
(check-equal? (sum cube 1 inc 10) 3025)
