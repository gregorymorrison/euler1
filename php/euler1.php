#!/usr/bin/php -q
<?php
// Euler1 in PHP

function euler1($n) {
    $sum = 0;

    for ($i=0; $i<$n; $i++) {
        if ($i%3 == 0 || $i%5==0) {
            $sum += $i;
        }
    }
    return $sum;
}

$result = euler1(1000);
?>
Euler1 = <?php echo $result . "\n" ?>
