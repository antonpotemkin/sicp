#lang racket/base

(define (sumOfSquare a b)
  (+ (* a a)
     (* b b)))

(define (sumOf2MaxSquare a b c)
  (cond ((and (< a b) (< a c)) (sumOfSquare b c))
        ((and (< b a) (< b c)) (sumOfSquare a c))
        (else (sumOfSquare a b))))

(provide sumOf2MaxSquare)
