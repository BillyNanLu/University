<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>比赛评分系统</title>
</head>
<body>
    <form id="form1" name="form1" method="post" action="">
        <h3>请输入各位评委评分</h3>
        1号: <input type="text" name="judge1"><br>
        2号: <input type="text" name="judge2"><br>
        3号: <input type="text" name="judge3"><br>
        4号: <input type="text" name="judge4"><br>
        5号: <input type="text" name="judge5"><br>
        6号: <input type="text" name="judge6"><br>
        7号: <input type="text" name="judge7"><br>
        8号: <input type="text" name="judge8"><br>
        <input type="submit" name="ok" value="提交统计" />
    </form>

    <?php
        if (isset($_POST['ok'])) {
            $s1 = $_POST['judge1'];
            $s2 = $_POST['judge2'];
            $s3 = $_POST['judge3'];
            $s4 = $_POST['judge4'];
            $s5 = $_POST['judge5'];
            $s6 = $_POST['judge6'];
            $s7 = $_POST['judge7'];
            $s8 = $_POST['judge8'];
            $scores = array($s1, $s2, $s3, $s4, $s5, $s6, $s7, $s8);
            $minS = min($scores);
            $maxS = max($scores);
            $minJ = array_search($minS, $scores) + 1;
            $maxJ = array_search($maxS, $scores) + 1;
            $total = 0;
            foreach ($scores as $key => $value)
                $total += $value;
            $score = round((($total - $maxS - $minS) / 6), 2);
            pirntf("<h4>去掉第<label>%u</label>号评委最高分<label>%.1f</label></h4>", $maxJ, $maxS);
            pirntf("<h4>去掉第<label>%u</label>号评委最低分<label>%.1f</label></h4>", $minJ, $minS);
            echo "<h2>当前选手最后成绩: <label>{$score}</label></h2>";
        }
    ?>
</body>
</html>