#lang racket/base

(require rackunit "../../src/chapter01/solution1_5.rkt")

(check-equal? (test 0 4) 0)
(check-equal? (test 1 4) 4)
