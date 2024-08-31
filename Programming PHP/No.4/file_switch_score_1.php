<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>成绩判断</title>
</head>

<body>
	<form id="form1" name="form1" method="post" action="">
		请输入您的成绩：
		<input name="score" type="text" id="score" size="8" />
		<input type="submit" name="button" id="button" value="提交" />
	</form>
	
	<?php
	   if (isset($_POST['button'])) {
	       $score = $_POST['score'];
	       echo "成绩：".$score."<br>";
	       $sc = (int)($score / 10);
	       switch ($sc) {
	           case 1:
	           case 2:
	           case 3:
	           case 4:
	           case 5:
	               echo "成绩不合格";
	               break;
	           case 6:
	               echo "成绩合格";
	               break;
	           case 7:
	               echo "成绩中等";
	               break;
	           case 8:
	               echo "成绩良好";
	               break;
	           case 9:
	           case 10:
	               echo "成绩优秀";
	               break;
	           default:
	               echo "分数异常";
	       }
	   }
	?>
</body>

</html>