#lang racket

(define (double a)
    (+ a a)
)

(define (halve a)
    (/ a 2)
)

(define (even? n)
    (= (remainder n 2) 0))

(define (* a b)
    (iter a b 0)
)

(define (iter a count prod)
    (cond
        ((= count 0) prod)
        ((even? count) (iter (double a) (halve count) prod))
        (else (iter a (- count 1) (+ prod a)))
    )
)

(* 3 4)