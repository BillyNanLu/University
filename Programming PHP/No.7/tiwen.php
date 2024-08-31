<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="" name="form1" method="post">
                请输入体温值: <input type="text" name="tem">
        <input type="submit" name="ok" value="确定">
    </form>

    <?php
        if(isset($_POST['ok'])) {
            $temperature = $_POST['tem'];
            echo $temperature."℃";
            if ($temperature >= 37.5)
                echo "体温异常，请注意";
            else
                echo "体温正常";
        }
    ?>
</body>

</html>