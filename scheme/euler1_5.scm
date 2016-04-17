; Euler1 in Scheme
(load "util.scm")
(debug-set! stack 100000)

(define (myMap lst)
    (map (lambda (x) x) lst))

(define (myFilter lst)
    (filter mod-3-5 lst))

(define (myFold lst)
    (fold + 0 lst))

(define (euler1 x)
    ((compose myFold (compose myFilter myMap)) (range 0 x)))

(display (euler1 999))(newline)