; Euler1 in Clojure

(defn expt
    ([n x] 
        (expt n x 1))
    ([n x acc]
        (if (= 0 x)
            acc
            (expt n (- x 1) (* n acc)))))

(defn mySum [n size]
  (* n 
    (int 
      (/
        (+ 
          (expt (int (/ size n)) 2) 
          (int (/ size n)))
        2))))

(defn euler1 [size]
  (- (+ (mySum 3 size) (mySum 5 size)) (mySum 15 size)))

(pr (euler1 999))