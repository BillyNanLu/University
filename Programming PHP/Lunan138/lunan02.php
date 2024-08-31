<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
	<form name="form1" method="post" action="">
		<p>
			请输入您的成绩: <input type="text" name="score">
		</p>
		<input type="submit" name="tijiao" value="提交">
	</form>
	
	<?php
	   if (isset($_POST['tijiao'])) {
	       $score = $_POST['score'];
	       echo "你所得的成绩是".$score."分<br>";
	       if ($score >= 60 && $score <= 69)
	           echo "成绩合格";
	       else if ($score >= 70 && $score <= 79)
	           echo "成绩中等";
	       else if ($score >= 80 && $score <= 89)
	           echo "成绩良好";
	       else if ($score >= 90 && $score <= 100)
	           echo "成绩优秀";
	       else 
	           echo '成绩不合格';
	   }
	?>
</body>

</html>