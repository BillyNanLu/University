<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
</head>

<body>
	<h1>用户注册</h1>
	<form action="doregist.php" id="form1" name="form1" method="post">
		<p>
			用户号: <input type="text" name="uid" value="344121138">
		</p>
		<p>
			用户名: <input type="text" name="uname" value="陆楠Billy">
		</p>
		<p>
			密码: <input type="password" name="upw" value="lunan123">
		</p>
		<p>
			性别:
			<input name="sex" type="radio" id="sex_0" value="男" checked="checked">男
			<input name="sex" type="radio" id="sex_1" value="女">男
		</p>
		<p>
			民族:
			<select name="minzu">
				<option value="汉族">汉族</option>
				<option value="藏族">藏族</option>
			</select>
		</p>
		<p>
			<input type="submit" name="submit" value="提交">
			<input type="reset" name="reset" value="重置">
		</p>
	</form>
</body>

</html>