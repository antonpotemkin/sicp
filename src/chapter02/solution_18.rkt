#lang racket/base

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (reverse items)
  (define (iter xs res)
    (if (null? xs)
        res
        (iter (cdr xs) (append (list (car xs)) res))))
  (iter (cdr items) (list (car items))))

(provide reverse)    

