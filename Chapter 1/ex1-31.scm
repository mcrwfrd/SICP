; A procedure to compute the product of a terms in a given range
(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

(define (identity x) x)

(define (incr n) (+ n 1))

(define (factorial n)
  (product identity 1 incr n))

(define (pi-term n)
  (if (even? n)
    (/ (+ n 2) (+ n 1))
    (/ (+ n 1) (+ n 2))))

; testing
(* (product pi-term 1 incr 10000) 4)
