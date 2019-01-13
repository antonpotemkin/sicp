#lang racket/base

(require rackunit "../../src/chapter02/solution_04.rkt")

(check-equal? (car (cons 3 4)) 3)

(check-equal? (cdr (cons 12 6)) 6)
