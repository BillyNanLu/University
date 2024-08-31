<?php
    ini_set("display_errors", "On");
    error_reporting(E_ALL|E_STRICT);
    $A = 12;
    $B = 3;
    $C = $A + $B;

    function addition() {
        $A = 20;
        $B2 = 10;
        $C = $A - $B2;
        echo "函数内的变量C = ".$C.".<br>";
    }

    addition();
    echo "函数外的变量C = ".$C."<br>";
    echo "输出变量A = ".$A."<br>";
    echo "输出变量B2 = ".$B2;
?>