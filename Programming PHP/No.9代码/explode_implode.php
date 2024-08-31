<?php
    $A = "My name is Jack";
    $arr = explode(" ", $A);
    print_r($arr);
?>



<?php
    $arr = array("香港", "上海", "北京", "深圳");
    $str1 = implode($arr);
    $str2 = implode("#", $arr);
    echo $str1."<br>";
    echo $str2;
?>



<?php
    $str = "我喜欢用PHP进行coding";
    $str1 = strtoupper($str);
    $str2 = strtolower($str);
    echo $str1."<br>";
    echo $str2;
?>