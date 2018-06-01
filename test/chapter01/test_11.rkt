#lang racket/base

(require rackunit "../../src/chapter01/solution_11.rkt")

(check-equal? (f-recur 10) 230)
(check-equal? (f-iter 10) 230)
