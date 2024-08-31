<?php
    $t1 = strtotime("2024-4-9");
    $t2 = strtotime("today");
    $t3 = strtotime("yesterday");
    $t4 = strtotime("last Tuesday");

    ehco "2024年04月09日时间戳: ".$t1."<br>";
    echo "今天是".date("Y-m-d", $t2)."<br>";
    echo "昨天是".date("Y-m-d", $t3)."<br>";
    echo "上周四是".date("Y-m-d", $t4)."<br>";
?>



<?php
    $day1 = strtotime("today + 2 days");
    $day2 = strtotime("+1 week");
    echo "今天是".date("Y-m-d")."<br>";
    echo "后天是".date("Y-m-d", $day1)."<br>";
    echo "一周后是".date("Y-m-d", $day2);
?>