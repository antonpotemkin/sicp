#lang racket/base

(require rackunit "../../src/chapter01/solution_3.rkt")

(check-equal? (sumOf2MaxSquare 1 2 3) 13)
(check-equal? (sumOf2MaxSquare 2 2 2) 8)
(check-equal? (sumOf2MaxSquare 5 0 2) 29)
