<?php
    $i = 1;
    while ($i <= 20) {
        if ($i % 2 == 0 && $i % 3 == 0) {
            echo '第一个2与3的公倍数是'.$i;
            break;
        }
        $i++;
    }
?>