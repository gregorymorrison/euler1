# Euler1 in PowerShell

function mysum ($n, $size) {
    ([Math]::Pow( [Math]::Floor($size/$n),2 ) + [Math]::Floor($size/$n)) * $n / 2
}

function euler1 ($size) {
    [Math]::Floor( (mysum 3 $size) + (mysum 5 $size) - (mysum 15 $size) )
}

euler1 999