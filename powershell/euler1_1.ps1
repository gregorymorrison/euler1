# Euler1 in Powershell

function euler1 ($size) {
    $ret = 0
    for ($i=1; $i -le $size; $i++) {
        if ($i%3 -eq 0 -or $i%5 -eq 0) {
            $ret += $i
        }
    }
    return $ret
}

euler1 (999)