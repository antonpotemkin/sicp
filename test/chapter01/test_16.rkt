#lang racket/base

(require rackunit "../../src/chapter01/solution_16.rkt")

(check-equal? (fast-expt 3 6) 729)
(check-equal? (solution 3 6) 729)
