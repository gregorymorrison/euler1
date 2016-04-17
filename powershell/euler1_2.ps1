# Euler1 in Powershell

function euler ($n, $acc) {
    if ($n -eq 0) {
        $acc
    } elseif ($n % 3 -eq 0 -or $n % 5 -eq 0) {
        euler ($n-1) ($acc+$n)
    } else {
        euler ($n-1) $acc
    }
}

function euler1 ($size) {
    euler $size 0
}

euler1 999