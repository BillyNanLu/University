<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>水仙花数</title>
</head>

<body>
    <form action="" name="form1" method="post">
                请输入一个三位数的正整数: <input type="number" name="N">
        <input type="submit" name="ok" value="确定">
    </form>

    <?php
        if(isset($_POST['ok'])) {
            $N = $_POST['N'];
            if ($N >= 100 && $N <= 999) {
                $one = $N % 10;
                $ten = $N / 10 % 10;
                $bai = $N / 100;
                settype($bai, "int");
                
                if (pow($one, 3) + pow($ten, 3) + pow($bai, 3) == $N)
                    echo $N."是水仙花数";
                else
                    echo $N."不是水仙花数";
            } else {
                echo "请输入一个三位数的正整数";
            }
        }
    ?>
</body>

</html>