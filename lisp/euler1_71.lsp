#!/usr/bin/clisp
; Euler1 in lisp 


(defgeneric add (a b))

 (defmethod add ((a number) (b number))
    (+ a b))
 (defmethod add ((a vector) (b number))
    (map 'vector (lambda (n) (+ n b)) a))
 (defmethod add ((a vector) (b vector))
    (map 'vector #'+ a b))

 (print (add 2 3))                   ; returns 5
 (print (add #(1 2 3 4) 7))          ; returns #(8 9 10 11)
 (print (add #(1 2 3 4) #(4 3 2 1))) ; returns #(5 5 5 5)
