#lang racket/base

(require rackunit "../../src/chapter01/solution1_22.rkt")
(require rackunit "../../src/chapter01/solution1_23.rkt")

(check-equal? (search-for-primes 2000000000000000) 1)
(check-equal? (search-for-primes-next 2000000000000000) 1)
