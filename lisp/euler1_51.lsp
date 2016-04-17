#!/usr/bin/clisp
; Euler1 in Lisp

(defun mod-3-5 (n)
	(if (or (= (mod n 3) 0) (= (mod n 5) 0)) n 0))

(defun Euler (n acc)
	(if (= 0 n)
		acc
		(Euler (1- n) (+ acc (mod-3-5 n)))))

(defun Euler1 (n)
	(Euler n 0))

(print (Euler1 999))
