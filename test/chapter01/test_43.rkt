#lang racket/base

(require rackunit "../../src/chapter01/solution_43.rkt")

(define (inc x) (+ x 1))
(define (square x) (* x x))

(check-equal? ((repeated square 2) 5) 625)
(check-equal? ((repeated inc 2) 5) 7)
(check-equal? ((repeated inc 3) 5) 8)
(check-equal? ((repeated inc 4) 5) 9)