#lang racket/base

(define (even? n)
(= (remainder n 2) 0))

(define (square a) (* a a))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (solution-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (solution-iter (square b) (/ n 2) a))
        (else (solution-iter b (- n 1) (* a b)))))

(define (solution b n)
  (solution-iter b n 1))

(provide fast-expt)
(provide solution)
