#lang racket/base

(require rackunit "../../src/chapter01/solution1_9.rkt")

(check-equal? (recur 4 5) 9)
(check-equal? (iter 4 5) 9)
