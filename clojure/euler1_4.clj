; Euler1 in Clojure

(defn slice [coll a b]
    ; a - 1-based starting index
    ; b - inclusive ending index
    (let [[x y] (split-at (dec a) coll)]
        (take (inc (- b a)) y)))

(defn mod-3-5 [n]
    (if (or (=(mod n 3)0) (=(mod n 5)0))  n  0))

(defn euler1 [coll]
    (if (empty? coll)
        0
        ; find the midpoint of the list
        (let [pivot (quot (count coll) 2)]
            ; return a value for the middle element
            (+ (mod-3-5 (nth coll pivot))
                ; plus the calculated value of the first half of the list
                (euler1 (slice coll 1 pivot))
                ; plus the calculated value of the last half of the list
                (euler1 (slice coll (+ pivot 2)(count coll)))))))

(println (euler1 (range 1000)))