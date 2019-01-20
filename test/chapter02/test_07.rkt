#lang racket/base

(require rackunit "../../src/chapter02/solution_07.rkt")

(define interval (make-interval 20 30))

(check-equal? (upper-bound interval) 20)
(check-equal? (lower-bound interval) 30)