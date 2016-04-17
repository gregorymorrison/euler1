#lang racket
;; Euler1 in Racket
(require "util.rkt")

(define (mod-3-5-n n)
    (if (mod-3-5 n) n 0))

(define (euler lst acc)
    (if (not (empty? lst))
        (euler (rest lst) (+ acc (mod-3-5-n (first lst))))
        acc))

(define (euler1 n)
    (euler (range 0 n) 0))

(printf "~a\n" (euler1 999))