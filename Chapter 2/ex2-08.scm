#lang sicp

; Boilerplate from the previous exercise
(define (make-interval a b) (cons a b))
(define (upper-bound interval) (max (car interval) (cdr interval)))
(define (lower-bound interval) (min (car interval) (cdr interval)))

; The smallest possible in the difference between two intervals is the
; differece between the smallest value of the first inerval and the largest value
; of the second interval. The largest possible value in the difference is the
; difference between the larges value of the first interval and the smallest value
; of the second interval.
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

; We need a way to print inervals nicely for testing
(define (print-interval I)
  (newline)
  (display "[")
  (display (lower-bound I))
  (display ", ")
  (display (upper-bound I))
  (display "]"))

(define I (make-interval -1 4))
(define J (make-interval 5 9))

(print-interval I)
(print-interval J)

(print-interval (sub-interval I J))