#lang racket/base

(define (cube x) (* x x x))

(define (p x) (- (* 3 x)
                 (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(provide sine)

; (sine 12.25)
; (p (sine 4.08))
; (p (p (sine 1.36)))
; (p (p (p (sine 0.45))))
; (p (p (p (p (sine 0.15)))))
; (p (p (p (p (p (sine 0.05))))))
; (p (p (p (p (p 0.05)))))

; а) p для 12.25 вызовется 5 раз
; б) т.к. в теле sine при angle > 0.1 происходит деление на 3, порядок роста логарифмический
