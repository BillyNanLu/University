<?php
    $A = 1;
    function addition() {
        $B = 3;
        echo "函数内的变量B = ".$B."<br>";
    }
    addition();
    echo "变量输出A = ".$A."<br>";
    if (isset($B) == true)
        echo "输出变量=".$B;
    else
        echo "变量B不存在或不在作用域内";
?>