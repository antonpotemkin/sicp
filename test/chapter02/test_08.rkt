#lang racket/base

(require rackunit "../../src/chapter02/solution_07.rkt")
(require rackunit "../../src/chapter02/solution_08.rkt")

(define interval1 (make-interval 20 30))
(define interval2 (make-interval 10 50))

(define sub (sub-interval interval2 interval1))

(check-equal? (upper-bound sub) 30)
(check-equal? (lower-bound sub) -20)