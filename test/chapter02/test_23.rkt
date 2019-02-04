#lang racket/base

(require rackunit "../../src/chapter02/solution_23.rkt")

(check-equal? (for-each (lambda (x) (newline) (display x)) (list 1 2 4)) #t)
