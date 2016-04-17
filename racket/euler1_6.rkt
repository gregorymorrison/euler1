#lang racket
;; Euler1 in Racket
(require "util.rkt")

(define (mySum n size)
    (* n
        (floor
            (/
                (+
                    (expt (floor (/ size n)) 2) 
                    (floor (/ size n)))
                2))))

(define (euler1 size)
    (- (+ (mySum 3 size) (mySum 5 size)) (mySum 15 size)))

(printf "~a\n" (euler1 999))