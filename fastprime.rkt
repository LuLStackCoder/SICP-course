#lang racket

(define (even? n)
    (= (remainder n 2) 0)
)

(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp) (remainder (expmod (sqr base) (/ exp 2) m) m))
          (else (remainder (* base (expmod base (- exp 1) m)) m))
    )
)

(define (test-ferma n)
    (define (try a)
        (= (expmod a n n) a)
    )
    (try (+ 1 (random (- n 1))))
)

(define (fast-prime n times)
    (cond ((= times 0) true)
          ((test-ferma n) (fast-prime n (- times 1)))
          (else false)
    )
)

(fast-prime 561 40)