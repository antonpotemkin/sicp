#lang racket/base

(define zero 
  (lambda (f)
    (lambda (x) x)))

(define (add-1 n)
  (lambda (f)
    (lambda (x) (f ((n f) x)))))

 (define one
  (lambda (f)
    (lambda (x) (f x))))   

(define two
  (lambda (f)
    (lambda (x) (f (f x)))))  

(define (add a b)
  (lambda (f)
    (lambda (x) ((a f) ((b f) x)))))       

(provide add-1 zero one two add)    

;(add-1 zero)
;(add-1 (lambda (f) (lambda (x) x)))

;(lambda (f)
;    (lambda (x) (f ((n f) x)))))

;(lambda (f)
;    (lambda (x) (f x)))