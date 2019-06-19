#lang racket

(define (average x y) (/ (+ x y) 2))

(define (sqr x) (* x x))
(define (abs x) ((if (< x 0) - +) x))

(define (sqrt x)
    (define (sqrt_iter guess)
        (if (enough_exact guess (improve guess)) (improve guess)
            (sqrt_iter (improve guess))
        )
    )
    (define (improve guess)
        (average guess (/ x guess))
    )
    (define (enough_exact guess guess_next)
        (< (abs (/ (- guess guess_next) guess )) 0.001 )
    )
    (sqrt_iter 1.0)
)

(sqrt 0.00000001)