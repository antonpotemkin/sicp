#lang racket/base

(require rackunit "./solution_18.rkt")

(define (deep-reverse x)
	(define (iter xs res)
  		(if (null? xs)
  			res
  			(if (not (pair? (car xs)))
  				(iter (cdr xs) (append (list (car xs)) res))
  				(iter (cdr xs) (cons (iter (car xs) (list)) res)))))
  	(iter x (list)))		

(provide deep-reverse)    

