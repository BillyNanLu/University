<?php
    $y = 2021;
    $m1 = 11;
    $m2 = 2;
    $d = 30;
    if (checkdate($m1,$d,$y))
        echo "有效日期: ".$y."_".$m1."_"."$d"."<br>";
    else
        echo "无效日期<br>";
    if (checkdate($m2,$d,$y))
        echo "有效日期: ".$y."_".$m2."_"."$d"."<br>";
    else
        echo "无效日期<br>";
?>