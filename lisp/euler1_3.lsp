#!/usr/bin/clisp
; Euler1 in Lisp

(defun range (n m)
    (loop for i from n to m collect i))

(defun mod-3-5 (n)
    (if (or (= (mod n 3) 0) (= (mod n 5) 0)) n 0))

(defun Euler1 (lst)
    (if lst
        ; find the midpoint of the list
        (let ((pivot (ceiling (/ (length lst) 2))))
            (+
                ; return a value for the middle element
                (mod-3-5 (nth (1- pivot) lst)) 
                ; plus Euler1 on the first half of the list
                (Euler1 (subseq lst 0 (1- pivot)))
                ; plus Euler1 on the last half of the list
                (Euler1 (subseq lst pivot))))
        0 ; else return 0
    )
)

(print (Euler1 (range 1 999))) 
