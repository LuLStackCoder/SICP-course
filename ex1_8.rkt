#lang racket

(define (cube x) (* x x x))
(define (abs x) ((if (< x 0) - +) x))

(define (cbrt x)
    (define (cbrt_iter guess)
       (if (enough_exact guess (improve guess)) (improve guess)
            (cbrt_iter (improve guess))
        )
    )
    (define (improve guess)
      (/ (+ (/ x (sqr guess)) (* 2 guess)) 3)
    )
    (define (enough_exact guess guess_next)
        (< (abs (/ (- guess guess_next) guess )) 0.001)
    )
    (cbrt_iter 1.0)
)

(cbrt 27)