#lang racket

(provide map)
(define (map f lst)
    (if (empty? lst) 
        empty
        (cons (f (first lst)) (map f (rest lst)))))

(provide filter)
(define (filter pred lst)
    (if (empty? lst) 
        empty
        (if (pred (first lst))
            (cons (first lst) (filter pred (rest lst)))
            (filter pred (rest lst)))))

(provide fold)
(define (fold f accum lst)
    (if (empty? lst) 
        accum
        (fold f (f accum (first lst)) (rest lst))))

(provide range)
(define (range low high)
    (cond
        ((> low high) empty)
        (else (cons low (range (+ low 1) high)))))

(provide slice)
(define (slice lst start end)
    (drop (take lst end) start))

(provide mod-3-5)
(define (mod-3-5 n)
    (if (or (= (modulo n 3) 0) (= (modulo n 5) 0)) #t #f))