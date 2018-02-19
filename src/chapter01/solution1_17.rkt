#lang racket/base

(define (even? n)
(= (remainder n 2) 0))

(define (double a) (* a 2))

(define (halve a) (/ a 2))

(define (solution b n)
  (cond ((= n 0) 0)
        ((= n 1) b)
        ((even? n) (double (solution b (halve n))))
        (else (+ b (solution b (- n 1))))))

(provide solution)
