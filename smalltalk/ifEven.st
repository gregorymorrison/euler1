Integer extend [
    ifEven: evenBlock ifOdd: oddBlock [
        ^self even
            ifTrue: [ evenBlock value: self ]
            ifFalse: [ oddBlock value: self ]
    ]
]

"Invoke the above method, passing it a block."
(10 ifEven: [ :n | n / 2 ])  displayNl