#lang racket/base

(require rackunit "../../src/chapter01/solution1_12.rkt")

(check-equal? (solution 5 2) 10)
(check-equal? (solution 6 3) 20)
(check-equal? (solution 0 0) 1)
