#lang racket/base

(require rackunit "./solution_18.rkt")

(define (same-parity? a b)
  (= (remainder a 2)
     (remainder b 2)))

(define (same-parity first . l)
    (define (iter xs res)
      (if (null? xs)
        res
        (let ((head (car xs))
              (tail (cdr xs)))
              (if (same-parity? first head)
                  (iter tail (cons head res))
                  (iter tail res)))))
  (iter (reverse (cons first l)) null))


(provide same-parity)    

