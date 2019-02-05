#lang racket/base

(require rackunit "../../src/chapter02/solution_24.rkt")

(check-equal? (count-leaves (list 1 (list 2 (list 3 4)))) 4)
