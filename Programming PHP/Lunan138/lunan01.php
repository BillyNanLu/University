<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>顾客消费</title>
</head>
<body>
    陆楠的第一题
    <form id="form1" name="form1" method="post" action="">
    	<p>
    		输入顾客消费的金额: <input type="text" name="shopping">
    	</p>
    	<input type="submit" name="submit" value="提交">
    </form>
    
    <?php
        if (isset($_POST['submit'])) {
            $money = $_POST['shopping'];
            $zhe = 1;
            
            if ($money > 500)
                $zhe = 0.75;
            else if ($money > 400)
                $zhe = 0.8;
            else if ($money > 300)
                $zhe = 0.85;
            else if ($money > 100)
                $zhe = 0.9;
            else
                $zhe = 1;
            
            $total = $money * $zhe;
            echo "顾客总计消费: ".$money."元, 折扣为: ".$zhe.", 应付款: ".$total."元";
            
        }
    ?>
</body>
</html>