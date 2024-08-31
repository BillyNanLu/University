<?php
    $ge = 0;
    $shi = 0;
    $bai = 0;
    $qian = 0;

    for ($i = 1000; $i <= 9999; $i++) {
        $ge = $i % 10;
        $shi = intval(($i % 100) / 10);
        $bai = intval(($i % 1000) / 100);
        $qian = intval($i / 1000);
        
        if ($i == pow($ge, 4) + pow($shi, 4) + pow($bai, 4) + pow($qian, 4))
            echo $i." ";
    }
?>