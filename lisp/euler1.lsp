#!/usr/bin/clisp
; Euler1 in Lisp

(defun euler1 (x)
	(reduce #'+
		(loop for y from 0 to x
			if (or (= (mod y 3) 0) (= (mod y 5) 0))
			collect y)
	)
)
(print (euler1 999))
