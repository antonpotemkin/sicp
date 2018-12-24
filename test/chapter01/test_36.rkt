#lang racket/base

(require rackunit "../../src/chapter01/solution_36.rkt")

(check-equal? (fixed-point 	(lambda (x) (/ (log 1000) (log x)))
								1.1) 4.555574964557791)

; Procedute took 31steps to arrive at an answer without using averange damping

(check-equal? (fixed-point 	(lambda (x)  (averange x (/ (log 1000) (log x))))
								1.1) 4.55553957996306)

;  Procedure took 13 steps to arrive at an anwer using averange dampping