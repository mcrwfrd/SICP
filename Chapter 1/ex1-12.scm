(define (pascal r c)
  (cond ((> c r) "Value does not exist")
        ((or (= r 0) (= r 1)) 1)
        ((or (= c 0) (= c r)) 1)
        (else (+ (pascal (- r 1) c) (pascal (- r 1) (- c 1))))))
      
