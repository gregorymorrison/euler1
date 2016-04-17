#lang racket
;; Euler1 in Racket
(require "util.rkt")

(define (euler n acc)
    (if (= n 0)
        acc
        (if (mod-3-5 n)
            (euler (- n 1) (+ acc n))
            (euler (- n 1) acc))))

(define (euler1 x)
    (euler x 0))

(printf "~a\n" (euler1 999))