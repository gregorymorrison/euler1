#lang racket
;; Euler1 in Racket
(require "util.rkt")

(define (mod-3-5-n n)
    (if (mod-3-5 n) n 0))

(define (euler lst)
    (if (not (empty? lst))
        ; find the midpoint of the list
        (let ((pivot (ceiling (/ (length lst) 2))))
            (+
                ; return a value for the middle element
                (mod-3-5-n (list-ref lst (- pivot 1))) 
                ; plus euler on the first half of the list
                (euler (slice lst 0 (- pivot 1)))
                ; plus euler on the last half of the list
                (euler (slice lst pivot (length lst)))))
        0 ; else return 0
    )
)

(define (euler1 n)
    (euler (range 0 n)))

(printf "~a\n" (euler1 999))