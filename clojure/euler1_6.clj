; Euler1 in Clojure

(defn myMap [lst]
    (map (fn [x] x) lst))

(defn myFilter [lst]
    (filter
        #(or (= (mod % 3) 0) (= (mod % 5) 0))
        lst))

(defn myReduce [lst]
    (reduce + lst))

(defn euler1 [fns data]
    (if (not-empty fns)
        (recur (rest fns) ((first fns) data))
        data))

(pr (euler1 [myMap myFilter myReduce] (range 1000)))