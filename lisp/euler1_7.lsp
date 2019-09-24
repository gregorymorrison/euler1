#!/usr/bin/clisp
; Euler1 in lisp 

(defmacro lcomp (expression for var in list conditional conditional-test)
  ;; create a unique variable name for the result
  (let ((result (gensym)))
    ;; the arguments are really code so we can substitute them 
    ;; store nil in the unique variable name generated above
    `(let ((,result nil))
       ;; var is a variable name
       ;; list is the list literal we are suppose to iterate over
       (loop for ,var in ,list
            ;; conditional is if or unless
            ;; conditional-test is (= (mod x 2) 0) in our examples
            ,conditional ,conditional-test
            ;; and this is the action from the earlier lisp example
            ;; result = result + [x] in python
            do (setq ,result (append ,result (list ,expression))))
       ;; return the result 
       ,result)))

(defun range (n m)
    (loop for i from n to m collect i))

(defun mod-3-5 (n)
    (or (= (mod n 3) 0) (= (mod n 5) 0)))

(print (reduce #'+ (lcomp x for x in (range 1 999) if (mod-3-5 x))))
