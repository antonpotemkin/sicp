#lang racket/base

(require rackunit "../../src/chapter02/solution_01.rkt")

(check-equal? (equal-rat? (mul-rat (make-rat 2 6) (make-rat -2 6)) (make-rat -1 9)) #t)
(check-equal? (equal-rat? (mul-rat (make-rat 2 6) (make-rat 2 -6)) (make-rat -1 9)) #t)
