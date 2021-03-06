#lang racket/base

(define (no-more? values)
  (null? values))

(define (except-first-denomination values)
  (cdr values))

(define (first-denomination values)
  (car values))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
          (+ (cc amount
                 (except-first-denomination coin-values))
              (cc (- amount
                     (first-denomination coin-values))
                  coin-values)))))

(provide cc)    

