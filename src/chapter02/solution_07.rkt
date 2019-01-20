#lang racket/base

(define (make-interval a b) (cons a b))

(define (upper-bound  i)
  (car i))

(define (lower-bound i)
  (cdr i))

(provide make-interval upper-bound lower-bound)    