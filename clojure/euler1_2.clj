Let's Explore Programming Languages
Just another WordPress.com site
Clojure
leave a comment »

      Rate This

Clojure, introduced in 2007, is an interesting beast – a Lisp for the JVM. Not only will you be able to sneak a Lisp into your workplace, but it is a first-class citizen, able to utilize all your existing Java libraries. Clojure is distributed simply as a jar file that you add to your JVM. Give it a try!

Here is Euler1 in Clojure. It uses a list comprehension and reduce. It looks even simpler than my first Lisp example; Clojure has a range function built in, for example:

; Euler1 in Clojure

(defn euler1 [x]
    (reduce +
        (for [n (range x) :when (or (= (mod n 3) 0) (= (mod n 5) 0))]
            n)))

(pr (euler1 1000))
Here is another version, which took me an hour to write. It’s analogous to my Standard ML version, which uses tail recursion and an accumulator. Notice also the multiple method signatures for euler1() – the first one takes one param while the second takes two. This lets us internally initialize an accumulator for our recursion:

; Euler1 in Clojure

(defn euler1
    ([n] (euler1 n 0))
    ([n acc] (if (= n 0)
        acc
        (if (or (=(mod n 3)0) (=(mod n 5)0))
            (recur (- n 1) (+ acc n))
            (recur (- n 1) acc)))))

(pr (euler1 999))