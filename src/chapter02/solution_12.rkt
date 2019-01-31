#lang racket/base

(require rackunit "./solution_07.rkt")

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i)
        (upper-bound i))
      2))

(define (width i)
  (/ (- (upper-bound i) 
        (lower-bound i))
      2))

(define (make-center-percent c p)
  (let ((percent (/ (* c p) 100)))
    (make-interval (- c percent) (+ c percent)))) 

(provide make-center-width center width make-center-percent)    