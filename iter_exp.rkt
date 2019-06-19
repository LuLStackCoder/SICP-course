#lang racket

(define (exp b n)
    (exp_iter b n 1)
)

(define (exp_iter b count prod)
    (if (= count 0) prod
        (exp_iter b (- count 1) (* prod b))
    )
)

(exp 2 10)