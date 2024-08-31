<?php
    $i = 0;
    echo "20以内所有不是2与3的公倍数有: ";
    while ($i < 20) {
        $i++;
        if ($i % 2 == 0 && $i % 3 == 0)
            exit;
        echo $i.'、';
    }
?>