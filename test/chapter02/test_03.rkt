#lang racket/base

(require rackunit "../../src/chapter02/solution_02.rkt")
(require rackunit "../../src/chapter02/solution_03.rkt")

(define p1 (make-point 1 1))
(define p2 (make-point 6 6))
(define s1 (make-segment p1 (make-point 6 1)))
(define s2 (make-segment p1 (make-point 1 6)))
(define r1 (make-rac p1 p2))
(define r2 (make-rac-segment p1 s1 s2))

(check-equal? (getPerimeter r1) 20)
(check-equal? (getPerimeter r2) 20)
(check-equal? (getArea r1) 25)
(check-equal? (getArea r2) 25)
