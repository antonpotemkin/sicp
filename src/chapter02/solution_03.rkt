#lang racket/base

(require rackunit "./solution_02.rkt")

(define (make-rac p1 p2)
  (cons p1 p2))

(define (top-left-point r)
  (car r)) 

 (define (bot-right-point r)
  (cdr r))


(define (make-rac-segment p s1 s2)
  (let ((p1 (end-segment s1))
        (p2 (end-segment s2)))
        (cons p (make-point (x-point p1) (y-point p2)))))

(define (getPerimeter f)
  (let ((p1 (top-left-point f))
        (p2 (bot-right-point f)))
        (+ (* 2 (abs (- (x-point p2) (x-point p1))))
           (* 2 (abs (- (y-point p2) (y-point p1)))))))

(define (getArea f)
  (let ((p1 (top-left-point f))
        (p2 (bot-right-point f)))
        (* (abs (- (x-point p2) (x-point p1)))
           (abs (- (y-point p2) (y-point p1))))))

(provide print-point make-rac make-rac-segment getPerimeter getArea)    