"Euler1 in Smalltalk"

Euler := [ :L |
    (L isEmpty)
    ifTrue:
        [ 0 ]
    ifFalse: [
        pivot := ((L size) // 2) max: 1.

        pre  := Euler value: (L copyFrom: 1 to: (pivot-1)).
        post := Euler value: (L copyFrom: (pivot+1) to: (L size)).

        pivotVal := L at: pivot.
        i := 0.
        (pivotVal \\ 3 = 0 or: [pivotVal \\ 5 = 0])
        ifTrue: 
            [i := pivotVal].

        i + pre + post.
    ].
].

Euler1 := [ :n | Euler value: (1 to: n) ].

(Euler1 value: 99) displayNl