; Euler1 in Scheme

(load "util.scm")

(define (euler1 x)
    (reduce
        (lambda (x y) (+ x y)) 0
        (filter
            (lambda (x) (or (= (modulo x 3) 0) (= (modulo x 5) 0)))
            (range 0 x))
    )
)

(display (euler1 999))