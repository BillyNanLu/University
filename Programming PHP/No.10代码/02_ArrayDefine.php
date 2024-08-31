<?php
    $A = array();
    for ($i = 0; $i <= 12; $i++)
        $A[$i] = $i;
    foreach($A as $V)
        echo $V."&nbsp;";;
?>



<?php
    $A = array();
    for ($i = 0; $i <= 3; $i++)
        $A[$i] = $i * 2 + 1;
    foreach($A as $V)
        echo $V."&nbsp;";;
?>



<?php
    $stu1 = array("D20C4701", "俊杰", "男", "软件技术");
    $stu1 = array("D20C4702", "慧慧", "女", "软件技术");
    $stu1 = array("D20C4703", "诗诗", "女", "软件技术");
    $stu1 = array("D20C4704", "丹丹", "女", "软件技术");
    $student = array($stu1, $stu2, $stu3, $stu4);
?>



<?php
    $stu1 = array("D20C4701", "俊杰", "男", "软件技术");
    $stu1 = array("D20C4702", "慧慧", "女", "软件技术");
    $stu1 = array("D20C4703", "诗诗", "女", "软件技术");
    $stu1 = array("D20C4704", "丹丹", "女", "软件技术");
    $student = array($stu1, $stu2, $stu3, $stu4);
    for ($i=0; $i <= 3; $i++)
        for ($j=0; $j < ; $j++)
            echo $student[$i][$j].',';
        echo "<br>";
?>

