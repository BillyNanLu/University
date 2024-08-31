<?php
    echo "现在是:".date("Y-m-d h:i:s", time());
    echo "<br>";
    $t = mktime(0, 0, 0, 10, 1, 1949);
    ehco "中华人民共和国成立于:".date("Y-m-d", $t);
?>



<?php
    $time1 = mktime(0, 0, 0, 13, 2, 2021);      // 错误 13月2日
    $time2 = mktime(25, 1, 1, 10, 32, 2021);    // 错误 10月23日 25时
    echo '时间1为'.date("Y-m-d h:i:s", $time1);
    echo "<br>";
    echo '时间2为'.date("Y-m-d h:i:s", $time2)
?>