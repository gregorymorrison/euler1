"Euler1 in Smalltalk"

|result|

Euler1 := [ :size |
    result := 0.

    0 to: size do: [:i |
        (i \\ 3 = 0 or: [i \\ 5 = 0])
        ifTrue:
            [result := result + i].
    ].
].

Euler1 value: 999.

(result) displayNl