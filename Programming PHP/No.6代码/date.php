<?php
    echo "当前系统时间是".date("Y-m-d", time());
?>



<?php
    echo "现在是".date("Y")."年".date("m")."月".date("d")."日";
    echo "[".date("1")."星期".date("w")."]";
    $noon = date("a") == "am" ? "上午" : "下午";
    echo $noon.date("h:i:s")."<br>";
    echo "本周是今年第".date("W")."周<br>";
    echo "本月一共有".date("t")."天";
?>



<?php
    echo "现在是".date("Y")."年".date("m")."月".date("d")."日";
    $weekN = date("w");
    $weekC = array("周日", "周一", "周二", "周三", "周四", "周五", "周六");
    echo $weekC[$weekN];
?>