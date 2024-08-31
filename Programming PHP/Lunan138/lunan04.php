<?php
    $one = 0;
    $ten = 0;
    $hun = 0;
    
    echo "所有的水仙花数为: <br>";
    for ($i = 100; $i <= 999; $i++) {
        $one = $i % 10;
        $ten = intval($i / 10) % 10;
        $hun = intval($i / 100);
        if ($i == $one ** 3 + $ten ** 3 + $hun **3)
            echo $i. " ";
    }
?>