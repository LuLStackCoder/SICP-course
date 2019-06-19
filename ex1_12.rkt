#lang racket

(define (pt row col)
    (cond
        ((or (<= col 0) (<= row 0) (> col row)) 0)
        ((or (= col 1) (= row col)) 1)
        ((< col row) (+ (pt (- row 1) col) (pt (- row 1) (- col 1)))
        )
    )
)

(pt 3 2)