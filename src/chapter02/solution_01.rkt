#lang racket/base


(define (numer c)
	(car c))

(define (denom c)
	(cdr c))
		
(define (make-rat n d)
  (let ((g (gcd n d)))
  	(if (< d 0)
  		(cons (- (/ n g)) (- (/ d g)))
    	(cons (/ n g) (/ d g)))))


(define (add-rat x y)
	(make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
	(make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
	(make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
	(make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
	(= (* (numer x) (denom y))
    	(* (numer y) (denom x))))            


(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x))
  (newline))

(provide print-rat make-rat add-rat sub-rat mul-rat div-rat equal-rat?)    