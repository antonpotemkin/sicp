#lang racket/base

(define (cons x y)
  (* (expt 2 x)
     (expt 3 y)))

(define (iter z base acc)
	(if (= (remainder z base) 0)
		(iter (/ z base) base (+ acc 1))
		acc))

(define (car z) (iter z 2 0)) 

(define (cdr z) (iter z 3 0))  

(provide cons car cdr)    