<?php
    $arr1 = array(1, 2, 3, 4, 5, 6);
    $arr2 = array("a"=>"音乐", "b"=>"舞蹈", "c"=>"滑板", "d"=>"美术");
    $arr3 = array("中国", "p"=>"瑞士", "澳大利亚");

    foreach ($arr1 as $key => $value)
        echo $value."&nbsp;&nbsp;";
    echo "<br>";

    foreach ($arr2 as $key => $value)
        echo $key."=>".$value."&nbsp;&nbsp;";
    echo "<br>";

    foreach ($arr3 as $key => $value)
        echo $value."&nbsp;&nbsp;";
    echo "<br>";
?>