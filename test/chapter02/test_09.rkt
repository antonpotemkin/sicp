#lang racket/base

(require rackunit "../../src/chapter02/solution_07.rkt")
(require rackunit "../../src/chapter02/solution_08.rkt")
(require rackunit "../../src/chapter02/solution_09.rkt")

(define interval (make-interval 20 30))
(define interval2 (make-interval 10 50))
(define interval3 (make-interval 20 60))
(define radius1 (radius interval))
(define radius2 (radius interval2))

(check-equal? (sum-rad interval interval2) 25)
(check-equal? (sum-rad interval interval3) 25)
(check-equal? (radius (mul-i interval interval2)) 650)
(check-equal? (radius (mul-i interval interval3)) 700)