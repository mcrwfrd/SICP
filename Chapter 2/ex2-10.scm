#lang sicp

; Interval package
(define (make-interval a b) (cons a b))
(define (upper-bound interval) (max (car interval) (cdr interval)))
(define (lower-bound interval) (min (car interval) (cdr interval)))

(define (print-interval I)
  (display "[")
  (display (lower-bound I))
  (display ", ")
  (display (upper-bound I))
  (display "]"))

(define (mul-interval x y) 
  (let ((p1 (* (lower-bound x) (lower-bound y))) 
        (p2 (* (lower-bound x) (upper-bound y))) 
        (p3 (* (upper-bound x) (lower-bound y))) 
        (p4 (* (upper-bound x) (upper-bound y)))) 
    (make-interval (min p1 p2 p3 p4) 
                   (max p1 p2 p3 p4)))) 

; New division procedure with error checking for intervals spanning 0
(define (div-interval x y)
  (if (>= 0 (* (lower-bound y) (upper-bound y)))
      (error "The divisor interval must not span the origin" y)
      (mul-interval
       x
       (make-interval (/ 1.0 (upper-bound y))
                      (/ 1.0 (lower-bound y))))))

; Testin
(define I (make-interval 1 2))
(define J (make-interval 3 4))
(define E (make-interval -1 1))

(print-interval (div-interval I J))
(print-interval (div-interval I E))
