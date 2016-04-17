#lang racket
;; Euler1 in Racket
(require "util.rkt")

(define-syntax lcomp
    (syntax-rules ()
        [(lcomp expression for var in mylist) 
            (for/list ([var mylist]) expression)]

        [(lcomp expression for var in mylist conditional test) 
            (for/list ([var mylist] #:when test) expression)]))

(printf "~a\n" 
    (fold + 0 
        (lcomp x for x in (range 0 999) if (mod-3-5 x))))