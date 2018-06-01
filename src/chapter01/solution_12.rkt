#lang racket/base

(define (solution n k)
  (cond ((= n 0) 1)
        ((= k 0) 1)
        ((= k n) 1)
        (else (+ (solution (- n 1) k)
                 (solution (- n 1) (- k 1))))))

(provide solution)
