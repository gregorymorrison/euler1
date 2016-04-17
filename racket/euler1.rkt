#lang racket
;; Euler1 in Racket
(require "util.rkt")

(define (euler1 x)
    (fold + 0
        (filter mod-3-5
            (map (lambda (x) x) 
            	(range 0 x)))))

(printf "~a\n" (euler1 999))