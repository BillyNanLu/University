<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>产品合格判定</title>
</head>

<body>
    <form id="form1" name="form1" method="post" action="">
        <p>
            请输入产品的长: <input type="text" name="a" id="a">
        </p>
        <p>
            请输入产品的宽: <input type="text" name="b" id="b">
        </p>
        <button name="button">计算</button>
    </form>

    <?php
        if (isset($_POST['button'])) {
            define("pass", 0.618);
            $a = $_POST['a'];
            $b = $_POST['b'];
            if ((($a / $b) == pass) || (($a / $b)== pass + 0.02) || (($a / $b)== pass - 0.02))
                echo "产品合格";
            else
                echo "产品不合格";
        }
    ?>
</body>

</html>