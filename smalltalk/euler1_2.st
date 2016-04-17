"Euler1 in Smalltalk"

mySum := [ :n :size | 
    (((size//n) raisedTo: 2) + (size//n)) * n // 2
].

Euler1 := [ :size |
    (mySum value:  3 value: size) +
    (mySum value:  5 value: size) -
    (mySum value: 15 value: size)
].

(Euler1 value: 999) displayNl