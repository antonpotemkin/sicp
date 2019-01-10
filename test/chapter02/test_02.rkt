#lang racket/base

(require rackunit "../../src/chapter02/solution_02.rkt")

(define p1 (make-point 1 1))
(define p2 (make-point 5 5))
(define s (make-segment p1 p2))
(define m-point (midpoint-segment s))

(check-equal? (equal-point? (make-point 3 3) m-point) #t)
