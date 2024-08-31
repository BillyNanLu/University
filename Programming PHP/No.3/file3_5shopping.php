<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>shopping 优惠</title>
</head>

<body>
    <form action="" method="post">
         请输入消费金额 <input type="number" name="cost" />
        <input type="submit" name="button" value="提交">
    </form>
    
    <?php
        if (isset($_POST['button'])) {
            $cost = (integer)$_POST['cost'];
            $you = $cost >= 100 ? ((integer)($cost / 100)) * 10 : 0;
            $pay = $cost - $you;
            echo "您一共消费了".$cost."元<br>";
            echo "应付款".$pay."元";
        }
    ?>
</body>

</html>