<?php
    $country = array("China", "Japan", "Korea", "Singapore");
    $i = 1;
    foreach ($country as $value) {
        echo "第".$i."位：";
        echo $value."<br>";
        $i++;
    }
?>



<?php
    $colors = array("a" => "red", "b" => "blue", "c" => "while");
    foreach ($colors as $key => $value) {
        echo $key." : ".$value."<br>";
    }
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>兴趣爱好</title>
</head>

<body>
    <form id="form1" name="form1" method="post" action="">
        请选择您的兴趣爱好: <br>
            <label for="">
                <input type="checkbox" name="like[]" value="读书" id="xq_0">
                读书
            </label>
            <label for="">
                <input type="checkbox" name="like[]" value="音乐" id="xq_0">
                音乐
            </label>
            <label for="">
                <input type="checkbox" name="like[]" value="摄影" id="xq_0">
                摄影
            </label>
            <label for="">
                <input type="checkbox" name="like[]" value="篮球" id="xq_0">
                篮球
            </label>
            <label for="">
                <input type="checkbox" name="like[]" value="舞蹈" id="xq_0">
                舞蹈
            </label>
            <input type="submit" name="OK" id="OK" value="提交" />
    </form>

    <?php
        if(isset($_POST['OK'])) {
            $like = $_POST['like'];
            echo "你的兴趣爱好有: ";
            foreach ($like as $k) {
                echo $k.'&nbsp';
            }
        }
    ?>
</body>

</html>