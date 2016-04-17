"Euler1 in Smalltalk"

Euler1 := [ :size |
  (((1 to: size)
    collect: [:x | x])
      select: [:x | ((x \\ 3) = 0 or: [(x \\ 5) = 0])])
        inject: 0 into: [:x :y | x + y]
].

result := Euler1 value: 999.
(Euler1 value: 999) displayNl.
Transcript space.