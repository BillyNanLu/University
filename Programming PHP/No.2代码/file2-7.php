<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录验证</title>
</head>

<body>
    <?php
        if (isset($_POST['login'])) {
            $user_name=$_POST['uname'];
            $user_pass=$_POST['upw'];
            if ($user_name="admin" && $user_pass="admin888") {
                echo "登陆成功";
                return;
            } else {
                echo "登录失败";
            }
        }
    ?>

    <form action="" method="post">
        <h4>用户登录</h4>
        <td height="30">用户名: <input type="text" name="uname"></td>
        <td>密码: <input type="passowrd" name="upw"></td>
        <td><input type="submit" name="login" value="登录"></td>
    </form>
</body>

</html>