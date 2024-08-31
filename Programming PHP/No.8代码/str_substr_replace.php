<?php
    $str = "Hello! My name is Rose";
    $s1 = str_replace("", "", $str, $i);
    echo $str."<br>";
    echo $s1."<br>";
    echo "共有".$i."个空格被替换";
?>



<?php
    $A = "When I was a worker";
    echo str_replace("w", "", $A);
    echo str_ireplace("w", "", $A);
?>



<?php
    $A = array("浅红", "红", "深红", "暗红");
    $B = str_replace("红", "绿", $A);
    foreach($B as $k)
        echo $A."、";
?>



<?php
    $str = "Hello! My name is Rose";
    $A1 = substr_replace($str, "", 63);
    $A2 = substr_replace($str, "My", 6, 2);
    $A3 = substr_replace($str, "Rose:", 0, 0);
    $A4 = substr_replace($str, "Nice to meet you!", strlen($str), 0);
    echo $str."<br>";
    echo $A1."<br>";
    echo $A2."<br>";
    echo $A3."<br>";
    echo $A4."<br>";
?>