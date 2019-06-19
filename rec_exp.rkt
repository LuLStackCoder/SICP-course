#lang racket

(define (exp b n)
    (if (= n 1) b
        (* b (exp b (- n 1)))
    )
)

(exp 2 10)