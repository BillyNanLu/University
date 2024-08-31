<?php
    if (isset($_POST['submit'])) {
        $uname = $_POST['sname'];
        $upass = $_POST['spass'];
        $sex = $_POST['sex'];
        $age = $_POST['sage'];
        $minzu = $_POST['minzu'];
        
        echo "姓名".$uname."<br>";
        echo "密码".$upass."<br>";
        echo "性别".$sex."<br>";
        echo "年龄".$age."<br>";
        echo "民族".$minzu;
    }