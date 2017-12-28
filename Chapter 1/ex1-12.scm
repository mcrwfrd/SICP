; Computes the entries of Pascal's triange starting from the top-most cell at r = 0, c = 0. Defensive programing in the first condition to prevent from returning false values.
(define (pascal r c)
  (cond ((or (> c r) (< c 0)) -1)
        ((or (= r 0) (= r 1)) 1)
        ((or (= c 0) (= c r)) 1)
        (else (+ (pascal (- r 1) c) (pascal (- r 1) (- c 1))))))
