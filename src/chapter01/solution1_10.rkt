#lang racket/base

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(provide A)
; (define (f n) (A 0 n)) Вычисляет 2*n
; (define (f n) (A 1 n)) Вычисляет 2**n
; (define (h n) (A 2 n)) Вычисляет 2^2^… (n-1 times)
