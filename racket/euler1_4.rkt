#lang racket
;; Euler1 in Racket
(require "util.rkt")

(define (myMap lst)
	(map (lambda (x) x) lst))

(define (myFilter lst)
	(filter mod-3-5 lst))

(define (myFold lst)
	(fold + 0 lst))

(define (euler1 x)
	((compose myFold myFilter myMap) (range 0 x)))

(printf "~a\n" (euler1 999))