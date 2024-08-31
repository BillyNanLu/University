<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>字数统计</title>
</head>

<body>
    <form id="form1" name="form1" method="post" action="">
    	<h1>文章</h1>
       	<textarea name="article" rows="6" cols="40"></textarea>
       	<br>
        <input type="submit" name="ok" value="单词统计">
    </form>

    <?php
        if (isset($_POST['ok'])){
            if (strlen(trim($_POST['article'])) == 0) {
                echo "Please input the content of your article";
                return;
            }
            $content = $_POST['article'];       // 文章内容
            $words = explode(" ", $content);    // 空格转换为分隔符 转换为数组
            $wordCount = sizeof($words);
            printf("There are %d words in your article", $wordCount);
        }
    ?>
</body>

</html>