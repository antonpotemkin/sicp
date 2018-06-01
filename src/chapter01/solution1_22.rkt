#lang racket/base

(require "./solution1_21.rkt")

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

(define (search-for-primes n)
  (iter n 3)
  1)

(provide search-for-primes)
