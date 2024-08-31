<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>加密登录</title>
</head>

<body>
    <form id="form1" name="form1" method="post" action="">
        用户名: <input type="text" name="uname">
        密码: <input type="password" name="upw">
        <input type="submit" name="login" value="登录">
    </form>

    <?php
        $uName = "admin";
        $uPing = "a44abb5684c45962d887564f08346e8d"
        if (isset($_POST['login'])){
            $userName = $_POST['uname'];
            $userPing = md5($_POST['upw']);
            if (strcmp($userName, $uName) != 0) {
                echo "用户不存在";
                return;
            }
            echo "登入成功";
        }
    ?>
</body>

</html>