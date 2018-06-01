#lang racket/base

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt-if x)
  (sqrt-iter 1.0 x))


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else-clause)))

(define (sqrt-iter-new-if guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter-new-if (improve guess x)
                     x)))

(define (sqrt-new-if x)
  (sqrt-iter-new-if 1.0 x))

(provide sqrt-if)
(provide sqrt-new-if)
; в процедуре sqrt-iter-new-if аргументы new-if будут вычисляться перед вызовом предиката, в результате
; мы получаем бесконечную рекурсию.
