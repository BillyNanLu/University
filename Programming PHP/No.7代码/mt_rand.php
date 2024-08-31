<?php
    $n1 = mt_rand();
    $n2 = mt_rand(1, 10);
    echo $n1."<br>";
    echo $n2;
?>



<?php
    $seed = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    $max = 35;
    $verCode = "";
    for ($i = 0; $i < 4; $i++) {
        $index = mt_rand(0, $max);
        $verCode = $seed[$index];
    }
    echo $verCode;
?>