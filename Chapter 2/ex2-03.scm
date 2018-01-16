#lang sicp

; Points library
(define (print-point p)
  (display "(")
  (display (x-coord p))
  (display ",")
  (display (y-coord p))
  (display ")"))

(define (make-point x y) (cons x y))
(define (x-coord p) (car p))
(define (y-coord p) (cdr p))

; First implementation of rectangle where a rectangle is just four pounts.This assumes all line segments
; in the rectangle are parallel to either the x- or the y-axis, which
; is not really a valid assumption for a complete representation
;(define (make-rectangle top-right bottom-left)
;  (cons top-right bottom-left))

; TODO: add sanity check to see which one is the real bottom left in case
; points aren't given in order
;(define (bottom-left rect)
  ;(cdr rect))
;(define (bottom-right rect)
;  (make-point (car (car rect))
;              (cdr (cdr rect))))
;(define (top-right rect)
;  (car rect))
;(define (top-left rect)
;  (make-point (car (cdr rect))
;              (cdr (car rect))))

; Second implementation of rectangle constructed from a starting point, height, and width.
(define (make-rectangle-2 bottom-left width length)
  (cons bottom-left (cons width length)))

(define (width-private rect) (car (cdr rect)))
(define (length-private rect) (cdr (cdr rect)))

(define (bottom-left rect)
  (car rect))
(define (bottom-right rect)
  (make-point (+ (x-coord (bottom-left rect)) (width-private rect))
              (y-coord (bottom-left rect))))
(define (top-left rect)
  (make-point (x-coord  (bottom-left rect))
              (+ (y-coord (bottom-left rect)) (length-private rect))))
(define (top-right rect)
  (make-point (x-coord (bottom-right rect))
              (y-coord (top-left rect))))
          
; Clients of the rectangle implementation
(define (width rect)
  (let ((x1 (x-coord (bottom-left rect)))
        (x2 (x-coord (top-right rect))))
    (- x2 x1)))

(define (length rect)
  (let ((y1 (y-coord (bottom-left rect)))
        (y2 (y-coord (top-right rect))))
    (- y2 y1)))

(define (perimeter rect)
      (* 2 (+ (width rect) (length rect))))

(define (area rect)
  (* (width rect) (length rect)))
  

; Testing
;(define r1 (make-rectangle (make-point 1 1)
;                      (make-point -1 -1)))

(define r2 (make-rectangle-2 (make-point -1 -1) 2 2))

(area r2)

  