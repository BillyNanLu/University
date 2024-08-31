<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>学号信息分析</title>
</head>

<body>
    <form id="form1" name="form1" method="post" action="">
        请输入您的学号: <input type="text" name="uid">
        <input type="submit" name="ok" value="分析">
    </form>

    <?php
        if (isset($_POST['ok'])){
            $ID = strtoupper($_POST['uid']);
            $departments = array("A"=>"财经学院", "B"=>"商务学院","C"=>"师范学院","D"=>"信息学院","E"=>"艺术学院");
            $ecucations = array("C"=>"大专", "U"=>"本科");
            $i = substr($ID, 0, 1);
            $department = $departments[$i];
            $i = substr($ID, 3, 1);
            $ecucation = $ecucations[$i];
            $grades = substr($ID, 1, 2);
            $classes = substr($ID, 4, 2);
            echo $ID.", 同学您好, 您的个人信息如下: "."<br>";
            printf("学院: %s<br>学历: %s<br>年级: %u级<br>班级: %u班", $department, $ecucation, $grades, $classes);
        }
    ?>
</body>

</html>