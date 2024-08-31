<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
</head>

<body>
	<form action="dozhuce.php" method="post" name="form">
		<p>
			用户名: <input type="text" name="sname">
		</p>
		<p>
			密码: <input type="password" name="spass">
		</p>
		<p>
			性别: 
			<input type="radio" name="sex" id="sex_0" value="男" checked="checked">男
			<input type="radio" name="sex" id="sex_1" value="女">女
		</p>
		<p>
			年龄: <input type="text" name="sage">
		</p>
		<p>
			民族:
			<select name="minzu">
				<option value="汉族">汉族</option>
				<option value="藏族">藏族</option>
				<option value="维吾尔族">维吾尔族</option>
			</select>
		</p>
		<p>
			<input type="submit" name="submit" value="提交">
			<input type="reset" name="reset" value="重置">
		</p>
	</form>
</body>

</html>