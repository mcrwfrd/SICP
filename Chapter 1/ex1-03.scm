; Define a procedure that takes three arguments and returns the sum of the largest two

(define (sum_squares a b)
  (+ (* a a)(* b b))
)

(define (largest_sum_squares a b c)
  (cond ((and (< a b) (< a c)) (sum_squares b c))
        ((and (< b a) (< b c)) (sum_squares a c))
        (else (sum_squares b c))))

(largest_sum_squares 1 3 4)
