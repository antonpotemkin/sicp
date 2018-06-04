#lang racket/base

(require rackunit "../../src/chapter01/solution_32.rkt")

(define (identity x) x)
(define (inc n) (+ n 1))
(define (cube n) (* n n n))

(define (combinerSum a b) (+ a b))
(define (combinerProduct a b) (* a b))

(check-equal? (accumulate combinerSum 0 identity 1 inc 10) 55)
(check-equal? (accumulateIter combinerSum 0 cube 1 inc 10) 3025)
(check-equal? (accumulateIter combinerProduct 1 identity 1 inc 10) 3628800)
(check-equal? (accumulate combinerProduct 1 cube 1 inc 5) 1728000)
