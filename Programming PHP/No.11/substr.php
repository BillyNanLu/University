<?php
    $A = "hello, I am Chinese";
    $A1 = substr($A, 0, 5);
    $A2 = substr($A, 11, 7);
    $A3 = substr($A, -8, 7);
    $A4 = substr($A, 5, -8);
    
    echo $A1."<br>";
    echo $A2."<br>";
    echo $A3."<br>";
    echo $A4."<br>";
?>