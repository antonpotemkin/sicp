#lang racket/base

(require rackunit "../../src/chapter01/solution_14.rkt")

(check-equal? (count-change 100) 292)
(check-equal? (count-change 11) 4)
