#!/usr/bin/clisp
; Euler1 in lisp

(defun myMap (lst)
    (mapcar (lambda (x) x) lst))

(defun myFilter (lst)
    (remove-if-not
        (lambda (n) (or (= (mod n 3) 0) (= (mod n 5) 0)))
        lst))

(defun myReduce (lst)
    (reduce #'+ lst))

(defun range (n m)
    (loop for i from n to m collect i))

(defun Euler1(lst)
    (myReduce (myFilter (myMap lst))))

(print (Euler1 (range 1 999)))