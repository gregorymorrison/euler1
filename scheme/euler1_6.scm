; Euler1 in Scheme
(load "util.scm")
(use-syntax (ice-9 syncase))
(debug-set! stack 100000)

(define-syntax lcomp
    (syntax-rules ()
        ((lcomp expression for var in mylist)
            (map (lambda (var) expression) mylist))

        ((lcomp expression for var in mylist conditional test)
             (map (lambda (var) expression) 
                (filter (lambda (expression) test) mylist)))))

(display
    (fold + 0
        (lcomp x for x in (range 0 999) if (mod-3-5 x))))
    (newline)
