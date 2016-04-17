# Euler1 in PowerShell

function euler1 ($size) {
    (1..$size) | where {$_%3 -eq 0 -or $_%5 -eq 0} | measure -sum | select -expand sum
}

euler1 999