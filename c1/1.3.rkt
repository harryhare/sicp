#lang racket
(define (sum_squre x y) (+ (* x x) (* y y)))
(define (two_of_three x y z)
  (cond
    ((and (< x y) (< x z)) (sum_squre y z))
    ((and (< y x) (< y z)) (sum_squre x z))
    (else (sum_squre x y))
    )
  )
(two_of_three 1 2 3)
(two_of_three 2 3 1)
(two_of_three 3 1 2)