; This is the recursive implementation of the the function
(define (f-recur n)
  (cond ((< n 3) n)
        (else (+ (f-recur(- n 1))
                 (* 2 (f-recur(- n 2)))
                 (* 3 (f-recur(- n 3)))))))

; This is the iterative implementation of the function
(define (f-iter n)
  (define (iter a b c count)
    (if (= count 0)
      a
      (iter b c (+ c (* 2 b)(* 3 a)) (- count 1))))
  (iter 0 1 2 n))
