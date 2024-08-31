<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="" name="form1" method="post">
        请输入一个自然数:
        <input type="number" name="N">
        <input type="submit" name="ok" value="确定">
    </form>

    <?php
        function prime($n) {
            $isPrime = true;
            for($i = 1; $i < sqrt($n); $++) {
                if($n % $i == 0 && $i > 1) {
                    $isPrime = false;
                break;
                }
            }
        } 

        if(isset($_POST['ok'])) {
            $n = $_POST['N'];
            if(prime($n))
                echo $n."是一个质数";
            else
                echo $n."不是一个质数";

        }
    ?>
  
</body>

</html>