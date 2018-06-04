#lang racket/base

(define (integral f a b n h)
  (define (yk k)
    (f (+ a (* k h))))

  (define (iter k)
    (cond ((= k 0) (+ (yk k) (iter (+ k 1))))
          ((= k n) (yk k))
          (else (if (= (remainder k 2) 0)
                    (+ (* 4 (yk k)) (iter (+ k 1)))
                    (+ (* 2 (yk k)) (iter (+ k 1)))))))

  (* (/ h 3) (iter 0)))

(define (cube a)
  (* a a a))

(define (integralCube a b n)
  (integral cube a b n (/ (- b a) n)))

(provide integralCube)
