<?php
    $seed = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    $max = 35;
    $verCode = "";
    for ($i = 0; $i < 4; $i++) {
        $index = mt_rand(0, $max);
        $verCode .= $seed[$index];
    }
    echo $verCode;
?>