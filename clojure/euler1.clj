; Euler1 in Clojure

(defn euler1 [x]
    (reduce +
        (for [n (range x) :when (or (= (mod n 3) 0) (= (mod n 5) 0))]
            n)))

(pr (euler1 1000))