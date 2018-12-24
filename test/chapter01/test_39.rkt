#lang racket/base

(require rackunit "../../src/chapter01/solution_39.rkt")

(check-equal? (tan-cf  (/ 3.141592653589793 6) 10) 0.5773502691896257)

; tg pi/6 = 0.5773502691896257							 