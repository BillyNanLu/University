<?php
    $ge = 0;
    $shi = 0;
    $bai = 0;
    
    for ($i = 100; $i <= 999; $i++) {
        $ge = $i % 10;
        $shi = intval(($i % 100) / 10);
        $bai = intval($i / 100);
        
        if ($i == pow($ge, 3) + pow($shi, 3) + pow($bai, 3))
            echo $i." ";
    }
?>