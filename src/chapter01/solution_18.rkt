#lang racket/base
(require "./solution_17.rkt")

(define (iter b n a)
  (cond ((= n 0) a)
        ((even? n) (iter (double b) (halve n) a))
        (else (iter b (- n 1) (+ a b)))))

(define (solution b n)
  (iter b n 0))

(provide solution)
;Инвариант b*n + a
