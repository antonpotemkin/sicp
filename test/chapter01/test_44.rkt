#lang racket/base

(require rackunit "../../src/chapter01/solution_44.rkt")

(define (inc x) (+ x 1))
(define (square x) (* x x))

(check-equal? ((smooth inc) 5) 6.0)
(check-equal? ((smooth square) 5) 25.000000000066663)
(check-equal? ((n-fold-smooth square 2) 5) 25.000000000133337)


