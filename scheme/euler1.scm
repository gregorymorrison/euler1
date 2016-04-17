; Euler1 in Scheme
(load "util.scm")
(debug-set! stack 100000)

(define (euler1 x)
    (reduce + 0
        (filter mod-3-5
            (map (lambda (x) x)
                (range 0 x)))))

(display (euler1 999))(newline)
