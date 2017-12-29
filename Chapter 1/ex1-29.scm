; This procedure raises the argument to the third power
(define (cube x)
  (* x x x))

; This procedure increments the argument by 1
(define (inc x)
  (+ x 1))

; This is the general function for taking the sum of a series of terms between a and b
(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))

(define (simpson-integral f a b n)
  (define h (/ (- b a) n))
  (define (y_k k) (f (+ a (* k h))))
  (define (simpson-term k)
    (* (cond ((or (= k 0) (= k n)) 1)
             ((odd? k) 4)
             (else 2))
        (y_k k)))
  (* (/ h 3) (sum simpson-term 0 inc n)))


; trials
(simpson-integral cube 0 1 100)
(simpson-integral cube 0 1 1000)
