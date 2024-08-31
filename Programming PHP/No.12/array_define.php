<?php
    $stu1 = array("D20C4701", "佳佳", "男", "软件技术");
    $stu2 = array("D20C4702", "慧慧", "女", "软件技术");
    $stu3 = array("D20C4703", "诗诗", "女", "软件技术");
    $stu4 = array("D20C4704", "丹丹", "女", "软件技术");
    $student = array($stu1, $stu2, $stu3, $stu4);
    for ($i=0; $i <= 3; $i++) {
        for ($j=0; $j <= 3; $j++)
            echo $student[$i][$j].'  ';
        echo "<br>";
    }

?>