<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>numloop</title>
</head>

<body>
	<form id="form1" name="form1" method="post" action="">
		<p>
    		请输入一个整数：
    		<input name="num" type="number" id="num" size="8" />
		</p>
		
		<input type="submit" name="button" id="button" value="转换" />
	</form>
	
	<?php
	   if (isset($_POST['button'])) {
	       $s = $_POST['num'];
	       $w = 0;
	       do {
	           $k = $s % 10;
	           $s = intval($s / 10);
	           $w = $w * 10 + $k;
	       } while($s != 0);
	       
	       echo $w;
	   }
	?>
</body>

</html>

