; Here we implement a new version of Newton's method in which we have updated the good-enough function to reflect the logic outlined in Question 1.7

; This procedure caries out the main logic of the program
(define (sqrt-iter guess guess-old x)
  (if (good-enough guess guess-old)
    guess
    (sqrt-iter (improve guess x) guess x)))

; In Newton's method, we improve our guess for the next iteration by replacing guess with the average of guess and x/guess
(define (improve guess x)
  (average guess (/ x guess)))

; The usual statistical average of two numbers
(define (average x y)
  (/ (+ x y) 2))

; Determines whether a guess meets a pre-determined accuracy threshold
(define (good-enough guess guess-old)
  (< (abs (- guess guess-old)) 0.001))

; Raises any number to the power of 2
(define (square x)
  (* x x))

; Acts as a wrapper for our iterator
(define (sqrt x)
  (sqrt-iter 1.0 0 x))

; tests
(sqrt 9) 3.00009155413138
''(sqrt (+ 100 37)) 11.704699917758145
;(sqrt (+ (sqrt 2) (sqrt 3))) 1.7739279023207892
;(square (sqrt 1000))
