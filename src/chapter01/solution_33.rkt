#lang racket/base

(define (filtered-accumulate predicate combiner null-value term a next b)
  (define (iter n result)
    (if (> n b)
        result
        (if (predicate n)
            (iter (next n) (combiner result (term n)))
            (iter (next n) result))))

(iter a null-value))

(provide filtered-accumulate)
