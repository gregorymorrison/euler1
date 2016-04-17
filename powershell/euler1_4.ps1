# Euler1 in PowerShell

function euler($l) {
    # if the list is empty, return 0
    if ($l -eq $null) {
        return 0

    } else {
        $pivot = [Math]::Floor($l.length/2)

        #calculate a value for the pivot element
        $i = 0
        if ($l[$pivot]%3 -eq 0 -or $l[$pivot]%5 -eq 0) {
            $i = $l[$pivot]
        }

        #recursively process the half of the list below the middle element
        $pre = 0
        if (0 -le $pivot-1) {
            $pre = euler $l[0..($pivot-1)]
        }

        #recursively process the half of the list above the middle element
        $post = 0
        if ($pivot+1 -le $l.length-1) {
            $post = euler $l[($pivot+1)..($l.length-1)]
        }

        #return thisVal + the results from the first and last halves
        return ($pre + $i + $post)
    }
}

function euler1($size) {
    euler (1..$size)
}

euler1 999
