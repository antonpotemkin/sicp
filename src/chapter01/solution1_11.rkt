#lang racket/base

(define (f-recur n)
  (cond ((< n 3) n)
        (else (+ (f-recur (- n 1))
                 (f-recur (- n 2))
                 (f-recur (- n 3))))))

(define (iter a b c count)
  (if (< count 3)
      c
      (iter b c (+ a b c) (- count 1))))

(define (f-iter n)
  (iter 0 1 2 n))

(provide f-recur)
(provide f-iter)
