#lang racket/base

(require rackunit "../../src/chapter02/solution_21.rkt")

(check-equal? (square-list-map (list 1 2 3 4 5 6 7)) (list 1 4 9 16 25 36 49))
(check-equal? (square-list (list 2 3 4 5 6 7)) (list 4 9 16 25 36 49))