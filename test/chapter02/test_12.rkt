#lang racket/base

(require rackunit "../../src/chapter02/solution_07.rkt")
(require rackunit "../../src/chapter02/solution_12.rkt")

(define intervalw (make-center-width 50 5))
(define intervalp (make-center-percent 50 10))

(check-equal? (center intervalw) 50)
(check-equal? (center intervalp) 50)
(check-equal? (width intervalw) 5)
(check-equal? (width intervalp) 5)