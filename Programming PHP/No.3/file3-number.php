<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>output</title>
</head>

<body>
    <form action="" method="post">
        请输入数字 <input type="number" name="num" />
        <input type="submit" name="button" value="提交">
    </form>
    
    <?php
        if (isset($_POST['button'])) {
            $num = (float)$_POST['num'];
            echo ($num % 3) <= 1 ? 1 : 0;
        }
    ?>
</body>

</html>