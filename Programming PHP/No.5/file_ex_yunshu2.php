<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>运费计算</title>
</head>

<body>
	<form id="form1" name="form1" method="post" action="">
		<p>
    		请输入距离（千米）：
    		<input name="juli" type="text" id="juli" size="8" />
		</p>
		<p>
    		请输入重量（吨）：
    		<input name="zhongliang" type="text" id="zhongliang" size="8" />
		</p>
		<p>
    		请输入运输单价（元/千米）：
    		<input name="danjia" type="text" id="danjia" size="8" />
		</p>
		<input type="submit" name="button" id="button" value="计算" />
	</form>
	
	<?php
	   if (isset($_POST['button'])) {
	       $s = $_POST['juli'];
	       $w = $_POST['zhongliang'];
	       $p = $_POST['danjia'];
	       $f = $s * $w * $p;
	       echo "距离：".$s."<br>";  
	       echo "重量：".$w."<br>"; 
	       echo "单价：".$p."<br>";
	       echo "优惠前运费：".$f."<br>";
	       
	       $ss = (int)($s / 250);
	       
	       switch ($ss) {
	           case 1:
	               echo "没有优惠<br>";
	               echo "最终运费：".$f."<br>";
	               break;
	           case 2:
	               echo "优惠百分比为：2%<br>";
	               $f = $f - $f * 0.02;
	               echo "最终运费：".$f."<br>";
	               break;
	           case 3:
	               echo "优惠百分比为：5%<br>";
	               $f = $f - $f * 0.05;
	               echo "最终运费：".$f."<br>";
	               break;
	           case 4:
	               echo "优惠百分比为：8%<br>";
	               $f = $f - $f * 0.08;
	               echo "最终运费：".$f."<br>";
	               break;
	           case 5:
	               echo "优惠百分比为：10%<br>";
	               $f = $f - $f * 0.10;
	               echo "最终运费：".$f."<br>";
	               break;
	           default:
	               echo "优惠百分比为：15%<br>";
	               $f = $f - $f * 0.15;
	               echo "最终运费：".$f."<br>";
	       }
	   }
	?>
</body>

</html>

