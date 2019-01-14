#lang racket/base

(require rackunit "../../src/chapter02/solution_05.rkt")


(check-equal? (car (cons 3 10)) 3)

(check-equal? (cdr (cons 5 9)) 9)
