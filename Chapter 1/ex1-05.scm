(define (p) (p)) ; the function (p) evaluates to the function (p)

(define (test x y)
  (if (= x 0) x y))

(test 0 (p))

; Because the function (p) evaluates to itself, it is recursive. So if we first true to evaluate everything, then we will try to evaluate (p). But evaluating (p) never actually terminates. Therefore, in an applicative-order interpreter, (test 0 (p)) will never terminate.

; On the other hand, if we expand the definition of each operator first, and then evaluate the if statement, we will reach x = 0 and return 0 before we ever have to evalute (p). Therefore, a normal-order interpreter will evaluate (test 0 (p)) to be 0
