#lang racket/base

(require rackunit "../../src/chapter02/solution_18.rkt")

(define lr (reverse (list 1 2 3 4)))

(check-equal? (car lr) 4)
(check-equal? (car (cdr lr)) 3)
(check-equal? (car (cdr (cdr lr))) 2)
(check-equal? (car (cdr (cdr (cdr lr)))) 1)