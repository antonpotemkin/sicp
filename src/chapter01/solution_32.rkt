#lang racket/base

(define (accumulateIter combiner null-value term a next b)
  (define (iter n result)
    (if (> n b)
        result
        (iter (next n) (combiner result (term n)))))
  (iter a null-value))

(define (accumulate combiner null-value term a next b)
  (define (innerAcc n)
    (if (> n b)
        null-value
        (combiner (term n) (innerAcc (next n)))))
  (innerAcc a))

(provide accumulate accumulateIter)
