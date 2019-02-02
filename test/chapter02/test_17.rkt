#lang racket/base

(require rackunit "../../src/chapter02/solution_17.rkt")

(check-equal? (last-pair (list 1 2 3 4)) 4)