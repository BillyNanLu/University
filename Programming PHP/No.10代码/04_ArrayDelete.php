<?php
    $A = array(1, 2, 3);
    var_dump($A);
    echo "<br>";
    unset($A);
    var_dump($A);
?>



<?php
    $A = array("a"=>1, "b"=>2, "c"=>3);
    $B = array("香港", "上海", "北京");
    unset($A["a"]);
    unset($B[1]);
    print_r($A);
    echo "<br>";
    print_r($B);
?>



<?php
    $arr1 = array("粉", "蓝". "黄", "紫", "白");
    $arr2 = array("黑", "灰");
    array_splice($arr1, 2, 1);
    print_r($arr1);
    echo "<br>";
    array_splice($arr1, 1, 0, $arr2);
    print_r($arr1);
?>



<?php
    $arr1 = array(1, 1, 2, 3, 4, 5, 6);
    $arr2 = array_unique($arr1);
    print_r($arr2);
    echo "<br>";
    print_r($arr1);
?>

