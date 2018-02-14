#lang racket/base

(define (average x y)
  (/ (+ x y) 2))

(define (appr-to-cube x y)
  (/ (+ (/ x (* y y)) (* 2 y))
     3))

(define (improve guess x)
  (average guess (appr-to-cube x guess)))

(define (good-enough? guess x)
  (< (abs (- (cub guess) x)) 0.001))

(define (cub x) (* x x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (solution x)
  (sqrt-iter 1.0 x))

(provide solution)
