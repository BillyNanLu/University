<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>和数</title>
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
        function isHeshu($n) {
            $isHeshu = false;
            for($i = 2; $i < sqrt($n); $i++) {
                if($n % $i == 0) {
                    $isHeshu = true;
                    break;
                }
            }
        } 

        if(isset($_POST['ok'])) {
            $m = $_POST['M'];
            $n = $_POST['N'];
            
            for ($i = $m; $i <= $n; $i++)
                if (isHeshu($i))
                    echo $i." ";
        }
    ?>
  
</body>

</html>