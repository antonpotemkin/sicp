#lang racket/base

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else-clause)))

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (new-gcd a b)
  (new-if (= b 0)
          a
          (new-gcd b (remainder a b))))

(provide gcd new-gcd)
;(gcd 206 40)
;(gcd 40 6)
;(gcd 6 4)
;(gcd 4 2)
;(gcd 2 0)
;2
; remainder выполнится 5 раз, при нормально порядке вычислений
; при апликативном порядке (new-gcd) remainder выполняется до new-if, поэтому b станет = 0
; процедура remainder при b = 0 упадет по ошибке
