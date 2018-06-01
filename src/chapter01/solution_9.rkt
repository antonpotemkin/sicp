#lang racket/base

(define (inc i) (+ i 1))

(define (dec i) (- i 1))

(define (recur a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))
; Вычисляется рекурсивно
; (recur 4 5)
; (inc (recur (dec 4) 5))
; (inc (recur 3 5))
; (inc (inc (recur (dec 3) 5)))
; (inc (inc (recur 2 5)))
; (inc (inc (inc (recur (dec 2) 5))))
; (inc (inc (inc (recur 1 5))))
; (inc (inc (inc (inc (recur (dec 1) 5)))))
; (inc (inc (inc (inc (recur 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9


(define (iter a b)
  (if (= a 0)
      b
      (iter (dec a) (inc b))))
; Вычисляется итеративно
; (iter 4 5)
; (iter (dec 4) (inc 5))
; (iter 3 6)
; (iter (dec 3) (inc 6))
; (iter 2 7)
; (iter (dec 2) (inc 7))
; (iter 1 8)
; (iter (dec 1) (inc 8))
; (iter 0 9)
; 9

(provide recur)
(provide iter)
