; Euler1 in Clojure

(defn myMap [lst]
    (map (fn [x] x) lst))

(defn myFilter [lst]
    (filter
        #(or (= (mod % 3) 0) (= (mod % 5) 0))
        lst))

(defn myReduce [lst]
    (reduce + lst))

(defn euler1 [lst]
    (myReduce (myFilter (myMap lst))))

(pr (euler1 (range 1000)))