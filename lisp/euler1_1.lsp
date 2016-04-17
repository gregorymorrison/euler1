#!/usr/bin/clisp
; Euler1 in Lisp

(defun euler (n acc)
    (if (= n 0) 
	    acc
	      (if (or (= (mod n 3) 0) (= (mod n 5) 0))
	          (euler (- n 1) (+ acc n))
	          (euler (- n 1) acc))))

(defun euler1 (n)
      (euler n 0))

(print (euler1 999))
