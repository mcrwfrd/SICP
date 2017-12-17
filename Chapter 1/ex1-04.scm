; Operators as compound expressions

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 2 -12)

; This procedure decides which operator to use depending on whether b is greater than 0. If be is greater than zero, then we add it to a. If b is less than zero, then we subtract it from a. But substracting a negative number is like adding the absolute value of the number. Therefore, as the name suggests, a-plus-abs-b adds the absolute value of b to a.
