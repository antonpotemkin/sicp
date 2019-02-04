#lang racket/base

(require rackunit "./solution_18.rkt")

(define (same-parity? a b)
  (= (remainder a 2)
     (remainder b 2)))

(define (same-parity first . l)
    (define (iter xs)
      (if (null? xs)
        null
        (let ((head (car xs))
              (tail (cdr xs)))
              (if (same-parity? first head)
                  (cons head (iter tail))
                  (iter tail)))))
  (cons first (iter l)))  


(provide same-parity)    

