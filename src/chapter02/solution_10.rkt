#lang racket/base

(require rackunit "./solution_07.rkt")

(define (make-interval a b) (cons a b))

(define (div2-interval x y)
  (if (and (<= (lower-bound y) 0)
           (>= (upper-bound y) 0))
           (error "lower <= 0 and upper >= 0")
           (mul-interval x
            (make-interval (/ 1.0 (upper-bound y))
                           (/ 1.0 (lower-bound y))))))

(provide div2-interval)    