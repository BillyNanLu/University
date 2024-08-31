<?php
    $str = "--I kike PHP--";
    $s1 = trim($str, "-");
    $s2 = lrim($str, "-");
    $s3 = rrim($str, "-");
    echo $str."<br>";
    echo $s1."<br>";
    echo $s2."<br>";
    echo $s3;
?>