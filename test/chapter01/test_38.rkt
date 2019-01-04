#lang racket/base

(require rackunit "../../src/chapter01/solution_37.rkt")

(define (d i)
   (if (not (= 0 (remainder (+ i 1) 3)))
       1
       (* 2 (/ (+ i 1) 3))))

(check-equal? (cont-frac (lambda (i) 1.0)
							d
							 10) 0.7182817182817183)							 