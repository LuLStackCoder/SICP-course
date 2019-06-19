#lang racket

(define (prime n)
    (define (iter n i)
        (cond ((>= (sqr i) n) true)
              ((= (remainder n i) 0) false)
              (else (iter n (+ i 1)))
        )
    )
    (iter n 2)
)

(prime 19999)