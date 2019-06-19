#lang racket

(define (sqrt_iter guess x)
    (if (enough_exact guess x) guess
        (sqrt_iter (improve guess x) x)
    )
)

(define (improve guess x )
    (average guess (/ x guess))
)

(define (average x y) (/ (+ x y) 2))

(define (enough_exact guess x)
    (< (abs (- (sqr guess) x) ) 0.001 
    )

)

(define (sqr x) (* x x))

(define (abs x) ((if (< x 0) - +) x))

(define (sqrt x) (sqrt_iter 1.0 x))

(sqrt 0.01)