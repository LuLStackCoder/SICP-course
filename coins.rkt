#lang racket

(define (fd coin-kind)
    (cond
        ((= coin-kind 1) 1)
        ((= coin-kind 2) 5)
        ((= coin-kind 3) 10)
        ((= coin-kind 4) 25)
        ((= coin-kind 5) 50)
    )
)

(define (count-change n)
    (cc 5 n))

(define (cc kind n)
    (cond
        ((= n 0) 1)
        ((or (< n 0) (= kind 0)) 0)
        (else (+ (cc (- kind 1) n)
                 (cc kind (- n (fd kind)))
              )
        )
    )
)


(count-change 1000)