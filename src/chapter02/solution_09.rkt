#lang racket/base

(require rackunit "./solution_07.rkt")
(require rackunit "./solution_08.rkt")

(define (radius i)
  (/ ( - (upper-bound i) (lower-bound i))
      2))

; (define (sum-rad i1 i2)
;  (/ (+ (- (upper-bound i1) (lower-bound i1))
;        (- (upper-bound i2) (lower-bound i2)))
;      2))

(define (sum-rad i1 i2)
  (/ (- (+ (upper-bound i1) (upper-bound i2))
        (+ (lower-bound i2) (lower-bound i1)))
      2))      

(define (sub-rad i1 i2)
  (/ (- (+ (upper-bound i1) (lower-bound i1))
        (+ (upper-bound i2) (lower-bound i1)))
      2))

(define (mul-i i1 i2)
  (make-interval (* (lower-bound i2) (lower-bound i1))
                 (* (upper-bound i1) (upper-bound i2))))

(provide radius sum-rad sub-rad mul-i)    