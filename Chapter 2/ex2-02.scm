#lang sicp

(define (print-point p)
  (display "(")
  (display (x-coord p))
  (display ",")
  (display (y-coord p))
  (display ")"))

(define (print-segment s)
  (newline)
  (print-point (start-segment s))
  (display " --> ")
  (print-point (end-segment s)))

(define (make-point x y) (cons x y))
(define (x-coord p) (car p))
(define (y-coord p) (cdr p))

(define (make-segment p q) (cons p q))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (midpoint-segment s)
  (define (avg x y) (/ (+ x y) 2.0))
  (let ((s0 (start-segment s))
        (s1 (end-segment s)))
    (make-point (avg (x-coord s0)
                     (x-coord s1))
                (avg (y-coord s0)
                     (y-coord s1)))))

;testing
(define s (make-segment (make-point -2 -2)
                        (make-point 1 1)))

(print-point (midpoint-segment s))



  

