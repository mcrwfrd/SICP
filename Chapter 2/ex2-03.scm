#lang sicp

; Points boilerplate from previous question

(define (print-point p)
  (display "(")
  (display (x-coord p))
  (display ",")
  (display (y-coord p))
  (display ")"))


(define (make-point x y) (cons x y))
(define (x-coord p) (car p))
(define (y-coord p) (cdr p))

; A rectangle is just four pounts

; First implementation of rectangle. This assumes all line segments
; in the rectangle are parallel to either the x- or the y-axis, which
; is not really a valid assumption for a complete representation
(define (make-rectangle top-right bottom-left)
  (cons top-right bottom-left))

; TODO: add check to see which one is the real bottom left in case
; points aren't given in order
(define (bottom-left rect)
  (cdr rect))
(define (bottom-right rect)
  (make-point (car (car rect))
              (cdr (cdr rect))))
(define (top-right rect)
  (car rect))
(define (top-left rect)
  (make-point (car (cdr rect))
              (cdr (car rect))))

; Compute the perimter
(define (perimeter rect)
  (let ((p1 (bottom-left rect))
        (p2 (top-right rect)))
    (let ((x1 (x-coord p1))
          (x2 (x-coord p2))
          (y1 (y-coord p1))
          (y2 (y-coord p2)))
      (* 2 (+ (- x2 x1) (- y2 y1))))))

; Testing
(define r1 (make-rectangle (make-point 1 1)
                      (make-point -1 -1)))
(perimeter r1)
  