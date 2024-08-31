<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="" method="post">
        请输入成绩 <input type="number" name="score" />
        <input type="submit" name="button" value="提交">
    </form>
    
    <?php
        if (isset($_POST['button'])) {
            $A = (float)$_POST['score'];
            if ($A >= 60)
                echo "Congrutions, pass!";
            else
                echo "Unfortunately, fail!";
        }
    ?>
</body>

</html>