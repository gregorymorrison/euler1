#!/usr/local/bin/vimsh
" Euler1 in VimL

" an object prototype (just a dictionary)
let Euler1 = {}

" the constructor
function! Euler1.New(size)
    let newObj = copy(self)
    let newObj.size = a:size
    return newObj
endfunc

" an instance method
function! Euler1.solve()
    let result = 0
    for i in range(1, self.size)
        if i % 3 == 0 || i % 5 == 0
            let result += i
        endif
    endfor
    let self.result = result
endfunc

" create an instance
let euler = Euler1.New(999)

:call euler.solve()

:echo "euler1 =" euler.result

