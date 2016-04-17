; Euler1 in lisp

(defun mySum (n size)
  (* n 
    (floor 
      (/
        (+ 
          (expt (floor (/ size n)) 2) 
          (floor (/ size n))))
        2))))
	      
(defun euler1 (size)
  (- (+ (mySum 3 size) (mySum 5 size)) (mySum 15 size)))

(print (euler1 999))
