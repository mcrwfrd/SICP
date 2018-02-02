#lang sicp

;; The first implementation without using map
(define (square-list items)
  (if (null? items)
      nil
      (cons (* (car items) (car items))
            (square-list (cdr items)))))

;; The second implementation using map
(define (square-list-2 items)
  (map (lambda (x) (* x x)) items))
