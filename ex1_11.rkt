#lang racket

(define (rec_f n)
    (if (< n 3) n
        (+
            (rec_f (- n 1)) 
            (rec_f (- n 2)) 
            (rec_f (- n 3))
        )
    )
)

(define (it_f n)
    (define (iter a b c count)
        (if (= count n) c
            (iter (+ a b c) a b (+ count 1))
        )
    )
    (iter 2 1 0 0)
)

;;; (rec_f 37)
(it_f 37)