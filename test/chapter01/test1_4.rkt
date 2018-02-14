#lang racket/base

(require rackunit "../../src/chapter01/solution1_4.rkt")

(check-equal? (a-plus-abs-b 1 2) 3)
(check-equal? (a-plus-abs-b 5 -2) 7)
