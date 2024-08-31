<?php
    $A = 12;
    echo "输出变量A = ".$A."<br>";
    unset($A);
    if (isset($A) == true)
        echo "变量A存在";
    else
        echo "变量A不存在";
?>