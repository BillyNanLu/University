<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>重力计算器</title>
</head>

<body>
    <form action="" method="post">
        请输入物体质量m: <input type="number" name="m">
        <input name="login" type="submit" value="登录">
    </form>
    <?php
        if (isset($_POST['m'])) {
            define("g", 9.8);
            $m = $_POST['m'];
            $G = g * $m;
            echo "您输入的质量为: ".$m;
            echo "<br>";
            echo "物体的质量为: ".$G;
        }
    ?>
</body>

</html>