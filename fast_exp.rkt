#lang racket

(define (exp b n)
    (cond ((= n 0) 1)
    ((even? n) (exp (* b b) (/ n 2)))
    (else (* b (exp b (- n 1))))
    )
)

(define (even? n)
    (= (remainder n 2) 0))

(exp 9 3)