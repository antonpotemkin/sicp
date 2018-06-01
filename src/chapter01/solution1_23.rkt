#lang racket/base

(define (square a)
  (* a a))

(define (divides? a b)
  (= (remainder b a) 0))
  
(define (next n)
  (if (= n 2)
      3
      (+ n 2)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (runtime) (current-milliseconds))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time) n)
      #f))

(define (report-prime elapsed-time n)
  (display n)
  (display " *** ")
  (display elapsed-time)
  (newline)
  #t)

(define (iter current n)
  (cond ((> n 0) (if (start-prime-test current (runtime))
                     (iter (+ current 1) (- n 1))
                     (iter (+ current 1) n)))))

(define (search-for-primes-next n)
  (iter n 3)
  1)

(provide search-for-primes-next)
