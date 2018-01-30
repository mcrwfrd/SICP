#lang sicp

(define (reverse items)
  (if (null? (cdr items))
      items
      (append (reverse (cdr items))
              (list (car items)))))

(display (reverse (list 1 2 3 4 5 6)))