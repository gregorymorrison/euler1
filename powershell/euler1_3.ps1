# Euler1 in PowerShell

function map  ($f, $l) {$l | ? {$_} | %  $f }
function filt ($f, $l) {$l | ?  $f  | % {$_}}

function reduce ($f, $acc, $l) {
    if ($l -eq $null) {
        $acc
    } elseif ($l.length -eq 1) {
        reduce $f (&$f $acc $l[0]) $null
    } else {
        reduce $f (&$f $acc $l[0]) $l[1..($l.length-1)]
    }
}

function euler1 ($size) {
    reduce {$args[0] + $args[1]} 0 (
        filt {$_%3 -eq 0 -or $_%5 -eq 0} (
            map {$_} $(1..$size)
        )
    )
}

euler1 999