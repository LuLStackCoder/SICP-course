#lang racket
(define (sqr x) (* x x))
(define (sum_sqr x y) (+ (sqr x) (sqr y)) )
(define (big_sum_sqr x y z) 
    (cond
        ((or (>= x y z) (>= y x z)) (sum_sqr x y))
        ((or (>= y z x) (>= z y x)) (sum_sqr y z))
        ((or (>= z x y) (>= x z y)) (sum_sqr x z))
    )
)
(big_sum_sqr 5 3 5)