<?php
    $str = "先天下之忧而忧, 后天下之乐而乐";
    $s1 = strstr($str, "后");
    $s2 = strstr($str, ", ", true);
    echo $str."<br>";
    echo $s1."<br>";
    echo $s2."<br>";
?>



<?php
    $str = "This is a PHP programe";
    $s1 = strpos($str, "is");
    $s2 = strpos($str, "is", 7);
    echo $str."<br>";
    echo 'is 首次出现在第'.$i.'位<br>';
    if ($s2)
        echo '第7个字符以后is出现的位置是: '.$s2;
    else
        echo '第7个字符以后is未出现';
?>



<?php
    $str = "先天下之忧而忧, 后天下之乐而乐";
    $s1 = mb_strpos($str, "忧");
    $s2 = strpos($str, "忧");
    echo $str."<br>";
?>