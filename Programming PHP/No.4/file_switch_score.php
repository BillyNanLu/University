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
	       switch ($score) {
	           case $score < 60:
	               echo "成绩不合格";
	               break;
	           case $score >= 60 && $score < 70:
	               echo "成绩合格";
	               break;
	           case $score >= 70 && $score < 80:
	               echo "成绩中等";
	               break;
	           case $score >= 80 && $score < 90:
	               echo "成绩良好";
	               break;
	           case $score >= 90 && $score <= 100:
	               echo "成绩优秀";
	               break;
	           default:
	               echo "分数异常";
	       }
	   }
	?>
</body>

</html>