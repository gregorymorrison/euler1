; Euler1 in Scheme
(load "util.scm")
(debug-set! stack 100000)

(define (mod-3-5-n n)
    (if (mod-3-5 n) n 0))

(define (euler lst)
    (if (null? lst)
        0 ; return 0
        ; else find the midpoint of the list
        (let ((pivot (ceiling (/ (length lst) 2))))
            (+
                ; return a value for the middle element
                (mod-3-5-n (list-ref lst (- pivot 1)))
                ; plus euler on the first half of the list
                (euler (slice lst 0 (- pivot 1)))
                ; plus euler on the last half of the list
                (euler (slice lst pivot (length lst)))))
    )
)

(define (euler1 n)
    (euler (range 0 n)))

(display (euler1 999))(newline)
