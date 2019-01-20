#lang racket/base

(require rackunit "../../src/chapter02/solution_07.rkt")

(define interval (make-interval 20 30))
(define interval2 (make-interval 10 50))
(define add (add-interval interval interval2))
(define mul (mul-interval interval interval2))
(define div (div-interval interval interval2))

(check-equal? (upper-bound interval) 30)
(check-equal? (lower-bound interval) 20)

(check-equal? (upper-bound add) 80)
(check-equal? (lower-bound add) 30)

(check-equal? (upper-bound mul) 1500)
(check-equal? (lower-bound mul) 200)

(check-equal? (upper-bound div) 3.0)
(check-equal? (lower-bound div) 0.4)