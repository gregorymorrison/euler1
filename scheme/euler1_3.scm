; Euler1 in Scheme
(load "util.scm")
(debug-set! stack 100000)

(define (mod-3-5-n n)
    (if (mod-3-5 n) n 0))

(define (euler lst acc)
    (if (null? lst)
        acc
        (euler (cdr lst) (+ acc (mod-3-5-n (car lst))))))

(define (euler1 n)
    (euler (range 0 n) 0))

(display (euler1 999))(newline)
