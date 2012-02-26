"Euler1 in Smalltalk"

Integer extend [
    Euler1 [
        ^ ((1 to: self)
            select: [:x | ((x \\ 3) = 0 or: [(x \\ 5) = 0])])
            fold: [ :x :y | x + y ].
    ]
]

(999 Euler1) displayNl