; We iterate from our starting point, guess, and improve our guess of the square root each time and it is deemed good enough, via the good-enough function
(define (sqrt-iter guess x)
  (if (good-enough guess x)
    guess
    (sqrt-iter (improve guess x) x)))

; In Newton's method, we improve our guess for the next iteration by replacing guess with the average of guess and x/guess
(define (improve guess x)
  (average guess (/ x guess)))

; The usual statistical average of two numbers
(define (average x y)
  (/ (+ x y) 2))

; Determines whether a guess meets a pre-determined accuracy threshold
(define (good-enough guess x)
  (< (abs (- (square guess) x)) 0.001))

; Raises any number to the power of 2
(define (square x)
  (* x x))

; Acts as a wrapper for our iterator
(define (sqrt x)
  (sqrt-iter 1.0 x))

; test

(sqrt (+ (sqrt 2) (sqrt 3)))
