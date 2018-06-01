#lang racket/base

(require rackunit "../../src/chapter01/solution_21.rkt")

(check-equal? (smallest-divisor 199) 199)
(check-equal? (smallest-divisor 1999) 1999)
(check-equal? (smallest-divisor 19999) 7)
