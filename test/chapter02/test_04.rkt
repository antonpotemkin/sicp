#lang racket/base

(require rackunit "../../src/chapter02/solution_04.rkt")

(check-equal? (car (cons 1 2)) 1)
; (car (cons 1 2))
; (car (lambda (m) (m 1 2)))
; (lambda (lambda (p q) p) (m 1 2))

(check-equal? (cdr (cons -2 6)) 6)
