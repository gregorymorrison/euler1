; Euler1 in Lisp
(defun result (x)
    (reduce #'+
        (loop for y from 0 to x
            if (or (= (mod y 3) 0) (= (mod y 5) 0))
            collect y)))
(print (result 999))