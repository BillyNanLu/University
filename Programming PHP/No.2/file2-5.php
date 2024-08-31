<?php
    function fun1() {
        static $A = 0;
        $A = $A + 1;
        return $A;
    }
    
    echo "第一次调用函数，A = ".fun1()."<br>";
    echo "第二次调用函数，A = ".fun1()."<br>";
    echo "第三次调用函数，A = ".fun1();
?>