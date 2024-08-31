<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="" name="form1" method="post">
        请输入整数N(N>1): <input type="number" name="N">
        <input type="submit" name="ok" value="确定">
    </form>

    <?php
        if(isset($_POST['ok'])) {
            $N = $_POST['N'];
            if ($N <= 1)
                echo "输入无效";
            else {
                $factorial = 1;
                $i = 1;
                while ($i <= $N) {
                    $factorial *= $i;
                    $i++;
                }
                echo "N != ".$factorial;
            }
        }
    ?>
</body>

</html>