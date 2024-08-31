<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>计算圆的周长面积</title>
</head>

<body>
    <form id="form1" name="form1" method="post" action="">
        <p>
               	请输入圆的半径: <input type="text" name="r" id="r">
               	<button name="button">计算</button>
        </p>
    </form>

    <?php
        if (isset($_POST['button'])) {
            define("pi", 3.142);
            $r = $_POST['r'];
            $s = pi * $r * $r;
            $c = pi * 2 * $r;
            echo "圆的半径: ".$r."<br>";
            echo "圆的面积: ".$s."<br>";
            echo "圆的周长: ".$c;
        }
    ?>
</body>

</html>