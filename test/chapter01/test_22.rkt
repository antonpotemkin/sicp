#lang racket/base

(require rackunit "../../src/chapter01/solution_22.rkt")

(check-equal? (search-for-primes 200000000000000) 1)
