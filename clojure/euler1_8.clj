; Euler1 in Clojure

(defmacro lcomp [expression for var in list conditional conditional-test]
    `(for [~var ~list :when ~conditional-test] ~expression))

(defn mod-3-5 [n]
    (or (=(mod n 3)0) (=(mod n 5)0)))

(prn (reduce + (lcomp x for x in (range 1000) if (mod-3-5 x))))