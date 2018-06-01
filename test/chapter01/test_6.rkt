#lang racket/base

(require rackunit "../../src/chapter01/solution_6.rkt")

(check-equal? (sqrt-if 9) 3.00009155413138)
(check-equal? (sqrt-if 137) 11.704699917758145)
;(check-equal? (sqrt-new-if 9) 3.00009155413138)
;(check-equal? (sqrt-new-if 137) 11.704699917758145)
; inifinite loop
