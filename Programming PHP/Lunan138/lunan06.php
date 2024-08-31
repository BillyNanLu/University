<?php
    $db_server = "localhost";       // MySQL服务器地址
    $db_user = "root";              // MySQL用户名
    $db_ping = "";                  // 登录密码
    $db_name = "library";           // 数据库名
    @$conn = mysqli_connect($db_server, $db_user, $db_ping) or die("数据库服务无法连接");
    if (!$conn)
        die('数据库连接失败'.mysqli_errno($conn));
    $conn -> set_charset("utf8mb4");        // 防止中文乱码
    // 打开数据库
    $db = mysqli_select_db($conn, $db_name);
    if (!$db)
        die("数据库打开失败".mysqli_errno($conn));
    $sqls = "select * from students";   // 查询语句
    $res = mysqli_query($conn, $sqls);
    if (!$res)
        echo "暂无任何学生信息";
    else {
        echo "学生信息列表: <br>";
        echo "<table width=1000px border=1>";
        // 将记录内容转换为数组并输出数组元素
        for ($i = 0; $i < mysqli_num_rows($res); $i++) {
            $resList = mysqli_fetch_array($res);
            echo "<tr>";
            echo "<td>".$resList[0]."</td>";
            echo "<td>".$resList[1]."</td>";
            echo "<td>".$resList[2]."</td>";
            echo "<td>".$resList[3]."</td>";
            echo "<td>".$resList[4]."</td>";
            echo "<td>".$resList[5]."</td>";
            echo "<td>".$resList[6]."</td>";
            echo "<td>".$resList[7]."</td>";
            echo "</tr>";
        }
        echo "</table>";
    }
    mysqli_close($conn);
?>