#lang racket/base

(require rackunit "../../src/chapter01/solution_40.rkt")

(check-equal? (solution 1 1 1) -0.9999999999997796)
(check-equal? (solution 2 1 1) -1.7548776662280976)
(check-equal? (solution 2 10 1) -0.10197368744464824)