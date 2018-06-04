#lang racket/base

(require rackunit "../../src/chapter01/solution_29.rkt")

(check-equal? (integralCube 0 1 100) 14803/60000)
(check-equal? (integralCube 0 1 1000) 1498003/6000000)
