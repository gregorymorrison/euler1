; Euler1 in Clojure

(defn euler1 [x]
    (reduce +
        (filter
            (fn [i]
                (or (= (mod i 3) 0) (= (mod i 5) 0)))
            (range x))))

(println (euler1 1000))