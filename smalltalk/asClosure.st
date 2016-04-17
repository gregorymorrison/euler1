Integer extend [
    asClosure [
        | value |
         value := self.
       ^ value.
    ]
]

blocks := 10 asClosure.
(blocks) displayNl