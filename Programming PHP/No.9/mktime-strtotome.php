<?php
    $time1 = mktime(0, 0, 0, 13, 2, 2021);      // 错误 13月2日
    $time2 = mktime(25, 1, 1, 10, 32, 2021);    // 错误 10月23日 25时
    echo '时间1为'.date("Y-m-d h:i:s", $time1);
    echo "<br>";
    echo '时间2为'.date("Y-m-d h:i:s", $time2);
    
    echo "<br>";
    
    $day1 = strtotime("today + 2 days");
    $day2 = strtotime("+1 week");
    echo "今天是".date("Y-m-d")."<br>";
    echo "后天是".date("Y-m-d", $day1)."<br>";
    echo "一周后是".date("Y-m-d", $day2);
?>