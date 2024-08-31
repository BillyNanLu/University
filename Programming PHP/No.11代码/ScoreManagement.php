<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>成绩管理系统</title>
</head>
<body>
    <form id="form1" name="form1" method="post" action="">
        <p>
            请输入学号: <input type="text" name="opt">
        </p>
        <input type="submit" name="ok" value="确定" />
    </form>

    <?php
        $scoreList = array("A21C5001" => 91, "A21C5002" => 93, "A21C5003" => 88, "A21C5004" => 79, "A21C5005" => 82,);
        if (isset($_POST['ok'])) {
            $opt = $_POST['opt'];
            switch ($opt) {
                case 'print':
                    printList($_POST['uid']);
                    break;
                case 'select':
                    $ID = strtoupper($_POST['uid']);
                    selectByID($ID);
                    break;
                case 'delete':
                    $ID = strtoupper($_POST['uid']);
                    deleteScore($ID);
                    break;
                case 'des':
                    sortScore("des");
                    break;
                case 'asc':
                    sortScore("asc");
                    break;
            }
        }

        function printList() {
            global $scoreList;
            foreach ($scoreList as $key => $value)
                echo $key." : ".$value."分";
        }

        function selectByID($id) {
            global $scoreList;
            if (isset($_POST['uid']))
                echo $id." : ".$scoreList[$id]."分";
            else
                echo "<label class='warn'>暂无该生成绩</label>";
        }

        function deleteScore($id) {
            global $scoreList;
            if (isset($_POST['uid'])) {
                unset($scoreList[$id]);
                echo "<label class='warn'>{$id}学生的成绩已删除</label>";
                printList();
            }
            else
                echo "<label class='warn'>找不到{$id}的成绩</label>";
        }

        function sortScore ($flag) {
            global $scoreList;
            if ($flag == 'des')
                asort($scoreList);
            elseif ($flag == 'asc')
                asort($scoreList);
            printList();
        }
    ?>
</body>
</html>










