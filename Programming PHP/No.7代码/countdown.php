<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
        function countDown() {
            $nowYear = date("Y", time());
            $nowMonth = date("m", time());
            // 判断高考时间
            if ($nowMonth > 6)
                $gokaoDate = strtotime(($nowYear + 1)."-"."06-07");
            else
                $gokaoDate = strtotime($nowYear."-"."06-07");
            // 计算并返回剩余天数
            $remainDays = intval($gokaoDate- time()) / 3600 * 24;
            return $remainDays;
        }
        echo "<div style='font-size:20px'>";
        echo "离高考只有<span style='color:red'>".countDown()."</span>天</div>"
    ?>
</body>

</html>