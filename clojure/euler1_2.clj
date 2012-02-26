; Euler1 in Clojure

(defn euler [n acc]
    (if (= n 1)
        acc
        (if (or (= (mod n 3) 0) (= (mod n 5) 0))
            (euler (- n 1) (+ acc n))
            (euler (- n 1) acc) )))

(defn euler1 [n]
    (euler n 0))

(println (euler1 999))