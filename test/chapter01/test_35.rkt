#lang racket/base

(require rackunit "../../src/chapter01/solution_35.rkt")

(check-equal? (fixed-point 	(lambda (x) (+ 1 (/ 1 x)))
								1.0) 1.6180555555555556)

