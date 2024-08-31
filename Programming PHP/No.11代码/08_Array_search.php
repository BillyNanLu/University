<?php
    $arr = array("嘉慧", "诗诗", "欣怡", "佳文");
    $goal = "静怡";
    $index = array_search($goal, $arr);
    if ($index == "")
        echo "未找到目标值".$goal."<br>";
    else
        echo "目标值".$goal."在第".$index."个元素<br>";
    $goal = "悦悦";
    $index = array_search($goal, $arr);
    if ($index == "")
        echo "未找到目标值".$goal."<br>";
    else
        echo "目标值".$goal."在第".$index."个元素<br>";
?>



<?php
    $arr = array(12, "12", "230", "Book");
    $r1 = in_array(12, $arr, true);
    $r2 = in_array(230, $arr, true);
    $r3 = in_array(230, $arr, false);
    $r4 = in_array("book", $arr, true);
    $r5 = in_array("book", $arr, false);
?>