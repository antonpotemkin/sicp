#lang racket/base

(require rackunit "../../src/chapter01/solution_42.rkt")

(define (inc x) (+ x 1))
(define (square x) (* x x))

(check-equal? ((compose square inc) 6) 49)
(check-equal? ((compose inc square) 6) 37)