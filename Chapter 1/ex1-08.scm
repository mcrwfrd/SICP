; Here we implement a new version of Newton's method, this time with the goal of computing cube roots using the formula outlined in question 1.8

; This procedure caries out the main logic of the program
(define (cbrt-iter guess guess-old x)
  (if (good-enough guess guess-old)
    guess
    (cbrt-iter (improve guess x) guess x)))

; This is how we improve each guess. This logic comes directly from the question.
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

; Determines whether a new guess falls within a certain threshold of the previous guess
(define (good-enough guess guess-old)
  (< (abs (- guess guess-old)) 0.001))

; Raises any number to the power of 2
(define (square x)
  (* x x))

; Raises any number to the power of 3
(define (cube x)
  (* x (* x x)))

; Acts as a wrapper for our iterator
(define (cbrt x)
  (cbrt-iter 1.0 0 x))

;test
(cbrt 27)
