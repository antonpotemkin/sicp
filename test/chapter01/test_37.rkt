#lang racket/base

(require rackunit "../../src/chapter01/solution_37.rkt")

(check-equal? (cont-frac-rec (lambda (i) 1.0)
							 (lambda (i) 1.0)
							 11) 0.6180257510729613)

(check-equal? (cont-frac (lambda (i) 1.0)
							 (lambda (i) 1.0)
							 11) 0.6180555555555556)							 