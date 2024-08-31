<?php
    $arr1 = array("粉", "蓝", "黄", "紫", "白");
    $arr2 = array("黑", "灰");
    array_splice($arr1, 2, 1);
    print_r($arr1);
    echo "<br>";
    array_splice($arr1, 1, 0, $arr2);
    print_r($arr1);
?>