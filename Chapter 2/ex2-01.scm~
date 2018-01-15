#lang sicp

; Ration numbers boilerplate

(define (numer rat) (car rat))
(define (denom rat) (cdr rat))

(define (print-rat rat)
  (newline)
  (display (numer rat))
  (display "/")
  (display (denom rat)))

;(define (make-rat n d) (cons n d))  

(define (make-rat n d)
  (cond ((< d 0) (cons (* -1 n) d))
        (else (cons n d))))

(define x (make-rat 1 2))



