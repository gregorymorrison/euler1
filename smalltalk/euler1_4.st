"Euler1 in Smalltalk"

Euler := [ :n :acc |
    (n = 1)
    ifTrue:
        [acc]
    ifFalse: [
        (n \\ 3 = 0 or: [n \\ 5 = 0])
        ifTrue: 
            [Euler value: (n-1) value: (acc+n)]
        ifFalse: 
            [Euler value: (n-1) value: acc].
    ].
].

Euler1 := [ :n | Euler value: n value: 0 ].

(Euler1 value: 999) displayNl