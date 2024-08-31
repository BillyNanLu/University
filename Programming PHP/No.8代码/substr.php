<?php
    $str = "Good morning! China!";
    $s1 = substr($str, 0, 4);
    $s2 = substr($str, 5, 7);
    $s3 = substr($str, -6, 6);
    $s4 = substr($str, 4, -6);
    echo $s1."<br>";
    echo $s2."<br>";
    echo $s3."<br>";
    echo $s4;
?>