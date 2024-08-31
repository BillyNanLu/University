<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>计算</title>
</head>

<body>
    <form action="" name="form1" method="post">
        m: <input type="number" name="M">
        <br><br>
        n: <input type="number" name="N">
        <br><br>
        <input type="submit" name="ok" value="提交">
    </form>

    <?php
        function isWanshu($x) {
            $s = 0;
            $j = 1;
            while ($j < $x) {
                if ($x % $j == 0)
                    $s += $j;
                $j++;
            }
            if ($s == $x)
                return true;
            else
                return false;
        } 

        if(isset($_POST['ok'])) {
            $m = $_POST['M'];
            $n = $_POST['N'];
            
            for ($i = $m; $i < $n; $i++)
                if (isWanshu($i))
                    echo $i." ";
        }
    ?>
  
</body>

</html>