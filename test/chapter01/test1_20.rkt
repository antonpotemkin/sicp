#lang racket/base

(require rackunit "../../src/chapter01/solution1_20.rkt")

(check-equal? (gcd 206 40) 2)
; (check-equal? (new-gcd 206 40) 2)
