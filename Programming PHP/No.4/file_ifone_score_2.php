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
	       if ($score > 100 or $score < 0) {
	           echo "成绩必须是0~100之间";
	           echo "请重新输入";
	       }
	   }
	?>
</body>

</html>