#lang racket/base

(require rackunit "../../src/chapter02/solution_22.rkt")

(check-equal? (square-list (list 1 2 4)) (cons (cons (cons null 1) 4) 16))
(check-equal? (cdr (square-list (list 1 2 4))) 16)
(check-equal? (car (square-list (list 1 2 4))) (cons (cons null 1) 4))

; wrong way to define square-list
; list always is reversed
; car for tail
; cdr for head