<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人所得税</title>
</head>

<body>
	<form id="form1" name="form1" method="post" action="">
		<p>
    		请输入您的月收入（元）：
    		<input name="shou" type="text" id="shou" size="8" />
		</p>

		<input type="submit" name="button" id="button" value="计算" />
	</form>
	
	<?php
	   if (isset($_POST['button'])) {
	       $s = $_POST['shou'];
	       echo "月收入：".$s."<br>";  
	       
	       if ($s < 800) {
	           echo "无需缴税<br>";
	       }
	       elseif ($s > 800 && $s <= 1300) {
	           $f = ($s - 800) * 0.05;
	           echo "缴税金额为：".$f."<br>";
	       }
	       elseif ($s > 1300 && $s <= 2800) {
	           $f = ($s - 800) * 0.10;
	           echo "缴税金额为：".$f."<br>";
	       }
	       elseif ($s > 2800 && $s <= 5800) {
	           $f = ($s - 800) * 0.15;
	           echo "缴税金额为：".$f."<br>";
	       }
	       elseif ($s > 5800 && $s <= 28000) {
	           $f = ($s - 800) * 0.20;
	           echo "缴税金额为：".$f."<br>";
	       }
	       elseif ($s > 28000) {
	           $f = ($s - 800) * 0.30;
	           echo "缴税金额为：".$f."<br>";
	       }
	   }

	?>
</body>

</html>



