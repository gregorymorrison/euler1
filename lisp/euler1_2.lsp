#!/usr/bin/clisp
; Euler1 in Lisp

(defun range (n m)
  (loop for i from n to m collect i))

(defun mod-3-5 (n)
    (if (or (= (mod n 3) 0) (= (mod n 5) 0)) n 0))

(defun Euler (lst acc)
    (if lst
        (Euler (cdr lst) (+ acc (mod-3-5 (car lst))))
        acc))

(defun Euler1 (lst)
    (Euler lst 0))

(print (Euler1 (range 1 999))) 
