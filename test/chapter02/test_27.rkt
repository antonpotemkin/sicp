#lang racket/base

(require rackunit "../../src/chapter02/solution_18.rkt")
(require rackunit "../../src/chapter02/solution_27.rkt")

(define x (list (list 1 2) 5 7(list 3 4)))
(define y (list (list 1 2)))

(check-equal? (reverse x) (list (list 3 4) 7 5 (list 1 2)))
(check-equal? (deep-reverse y) (list (list 2 1)))
(check-equal? (deep-reverse x) (list (list 4 3) 7 5 (list 2 1)))

