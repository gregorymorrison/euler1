#!/usr/local/bin/vimsh
" Euler1 in VimL

function! g:Euler1(size)
    let s:result = 0

    for i in range(1, a:size)
        if i % 3 == 0 || i % 5 == 0
            let s:result += i
        endif
    endfor

    return s:result
endfunc

:echo g:Euler1(999)