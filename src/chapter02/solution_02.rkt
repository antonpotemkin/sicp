#lang racket/base

(define (make-segment p1 p2)
  (cons p1 p2))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))   

(define (y-point point)
  (cdr point))

(define (midpoint-segment segment)
  (let ((p1 (start-segment segment))
        (p2 (end-segment segment)))
          (make-point (/ (+ (x-point p2) (x-point p1)) 2)
                      (/ (+ (y-point p2) (y-point p1)) 2))))

(define (equal-point? p1 p2)
  (and (= (x-point p1) (x-point p2))
       (= (y-point p1) (y-point p2))))

(define (print-point p)
  (newline)
  (display "(") 
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(provide x-point y-point midpoint-segment print-point make-segment start-segment end-segment make-point equal-point?)    