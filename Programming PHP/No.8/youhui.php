<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>discount</title>
</head>

<body>
    <form id="form1" name="form1" method="post" acion="">
               请输入您的消费金额:
            <input name="shopping" type="number" id="shopping" />

        <input type="submit" name="OK" id="OK" value="提交" />
    </form>

    <?php
        if(isset($_POST['OK'])) {
            $money = $_POST['shopping'];
            $discount = 1;
            
            if ($money > 0 && $money <= 100)
                $discount = 1;
            else if ($money > 101 && $money <= 300)
                $discount = 0.90;
            elseif ($money > 301 && $money <= 400)
                $discount = 0.85;
            elseif ($money > 401 && $money <= 500)
                $discount = 0.80;
            elseif ($money > 501)
                $discount = 0.75;
            
            $total = $money * $discount;
            echo "顾客消费的金额为: ".$money.", 享受到的折扣为: ".$discount.", 应付款: ".$total."元";

        }
    ?>
</body>

</html>