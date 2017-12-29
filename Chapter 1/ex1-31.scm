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

; trial
(factorial 5)

; Product procedure works, now need to implement the approxumation to Pi
; Brainblast! Make the thing increment by 2 instead of 1...much easier than the more mathematical solution you were drumming up before!
