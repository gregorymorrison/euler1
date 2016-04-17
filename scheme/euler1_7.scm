; Euler1 in Scheme
(load "util.scm")

(define (mySum n size)
    (* n 
        (floor 
            (/ 
                (+
                    (expt (floor (/ size n)) 2)
                    (floor (/ size n)))
                2))))

(define (euler1 size)
    (- (+ (mySum 3 size) (mySum 5 size)) (mySum 15 size)))

(display (euler1 999))(newline)
