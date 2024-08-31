<?php
    $arr = array(1, 2, 3, 4, 5, 6);
    $i = 0;
    while ($i < sizeof($arr)) {
        echo $arr[$i]."&nbsp;&nbsp;";
        $i++;
    }
?>



<?php
    $arr = array(1, 2, 3, 4, 5, 6);
    for ($i = 0; $i < count($arr); $i++)
        echo $arr[$i]."&nbsp;&nbsp;";
?>



<?php
    $arr1 = array(1, 2, 3, 4, 5, 6);
    $arr2 = array("a"=>"音乐", "b"=>"舞蹈", "c"=>"美术", "d"=>"书法");
    $arr3 = array("中国", "p"=>"美国", "澳大利亚");

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



<?php
    $arr = array("a"=>"PHP", "b"="JAVA", "c"=>"C++", "d"=>"Python", "e"=>"");
    echo '第一个元素键名: '.key($arr).'<br>';
    next($arr);
    next($arr);
    echo '当前元素键名: '.key($arr);
    echo '.值: '.$arr[key($arr)].'<br>';
    end($arr);
    echo '当前元素值: '.$arr[key($arr)];
?>



<?php
    $book1 = array("《PHP程序设计与项目开发》", 48.5, "电子工业出版社");
    $book1 = array("《MySQL数据库技术与应用》", 45.0, "电子工业出版社");
    $book1 = array("《微信公众平台与小程序开发》", 57.0, "电子工业出版社");
    $book1 = array("《数据结构与算法》", 36.0, "电子工业出版社");
    $books = array($book1, $book2, $book3, $book4);
    $lenBooks = sizeof($books);
    for ($i=0; $i < $lenBooks; $i++) { 
        echo $books[$i][$j];
    }
    echo "<br>";
?>



<?php
    $stu1 = array("D21C5001", "俊杰", "男", "软件技术");
    $stu1 = array("D21C5002", "慧慧", "女", "软件技术");
    $stu1 = array("D21C5003", "诗诗", "女", "软件技术");
    $stu1 = array("D21C5004", "丹丹", "女", "软件技术");
    $student = array("xs1"=>$stu1, "xs2"=>$stu2, "xs3"=>$stu3, "xs4"=>$stu4);

    foreach($student as $key=>$val)
        echo $val['ID'].", ".$val['name'].", "$val['sex'].", "$val['major']."<br>";
?>