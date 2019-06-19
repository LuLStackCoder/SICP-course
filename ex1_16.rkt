#lang racket

(define (exp b n)
    (exp_iter b n 1)
)

(define (exp_iter b n a)
    (cond 
        ((= n 0) a)
        ((even? n) (exp_iter (sqr b) (/ n 2) a))
        (else (exp_iter b (- n 1) (* a b)))
    )
)

(define (even? n)
    (= (remainder n 2) 0))

(exp 2 10)