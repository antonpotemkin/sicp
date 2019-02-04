#lang racket/base

(define (for-each func items)
  (if (null? items)
      #t
      (let ((head (car items))
            (tail (cdr items)))
            (func head)
            (for-each func tail))))

(provide for-each)    

