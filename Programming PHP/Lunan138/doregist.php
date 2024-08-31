<?php
    if (isset($_POST['submit'])) {
        $uid = $_POST['uid'];
        $uname = $_POST['uname'];
        $pass = $_POST['upw'];
        $sex = $_POST['sex'];
        $minzu = $_POST['minzu'];
        
        echo "用户号: ".$uid."<br>";
        echo "用户名: ".$uname."<br>";
        echo "密码: ".$pass."<br>";
        echo "性别: ".$sex."<br>";
        echo "民族: ".$minzu;
    }
?>