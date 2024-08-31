<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
        $A = "Hello";
        $B = "我是中国人";
        echo "变量A的长度是".strlen($A)."<br>";
        echo "变量B的长度是".strlen($B);
    ?>    
</body>

</html>



<?php
    $A = "Hello";
    $B = "我是中国人";
    echo "变量A的长度是".mb_strlen($A)."<br>";
    echo "变量B的长度是".mb_strlen($B);
?>  