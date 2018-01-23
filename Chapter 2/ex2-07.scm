#lang sicp

(define (make-interval a b) (cons a b))

(define (upper-bound interval) (max (car interval) (cdr interval)))
(define (lower-bound interval) (min (car interval) (cdr interval)))

; testing

(define I (make-interval -6 1))

(upper-bound I)
(lower-bound I)