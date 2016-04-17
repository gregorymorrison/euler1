; Euler1 in Clojure

(defn mod-3-5 [n]
    (if (or (=(mod n 3)0) (=(mod n 5)0))  n  0))

(defn euler [lst acc]
    (if (not-empty lst)
        (recur (rest lst) (+ acc (mod-3-5 (first lst))))
        acc))

(defn euler1 [n]
    (euler (range n) 0))

(pr (euler1 1000))