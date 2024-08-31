<?php
    $arr1 = array("a"=>1, "b"=>30, "c"=>2, "d"=>3);
    echo '默认排序后: <br>';
    if (sort($arr1)) {
        foreach ($arr1 as $key => $value) {
            echo $key."=>".$value;
        }
    }
    echo '<br>SORT_STRING排序后: <br>';
    if (sort($arr1, 2)) {
        foreach ($arr1 as $key => $value) {
            echo $key."=>".$value."、";
        }
    }
?>



<?php
    $arr1 = array("a"=>1, "b"=>30, "c"=>2, "d"=>10);
    echo '默认排序后: <br>';
    if (sort($arr1)) {
        foreach ($arr1 as $key => $value) {
            echo $key."=>".$value;
        }
    }
    echo '<br>SORT_STRING排序后: <br>';
    if (asort($arr1, 2)) {
        foreach ($arr1 as $key => $value) {
            echo $key."=>".$value."、";
        }
    }
?>



<?php
    $arr1 = array("D3605"=>89, "D3603"=>85, "D3607"=>80, "D3601"=>70);
    echo '排序后（按学号顺序）: <br>';
    if (sort($arr1)) {
        foreach ($arr1 as $key => $value) {
            echo $key."=>".$value."、";
        }
    }
?>



<?php
    $arr1 = array("a"=>80, "f"=>95, "e"=>86, "c"=>70);
    echo '降序排序后如下: <br>';
    if (sort($arr1)) {
        foreach ($arr1 as $key => $value) {
            echo $key."=>".$value."、";
        }
    }
?>



<?php
    $arr1 = array("a"=>80, "f"=>95, "e"=>86, "c"=>70);
    echo '降序排序后如下: <br>';
    if (sort($arr1)) {
        echo $key."=>".$value."、";
    }
?>



<?php
    $arr1 = array("a"=>80, "f"=>95, "e"=>86, "c"=>70);
    echo '降序排序后如下: <br>';
    if (krsort($arr1)) {
        echo $key."=>".$value."、";
    }
?>



<?php
    $seed = array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F");
    shuffle($seed);
    $idenCode = "";
    for ($i = 0; $i < count($seed); $i++)
        $idenCode.=$seed[$i];
    echo $idenCode;
?>
