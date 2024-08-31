<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>print star</title>
</head>

<body>
    <form id="form1" name="form1" method="post" acion="">
        选择打印星星样式: <br>
        <label>
            <input type="radio" name="answer" value="1" id="a_0" />
            A. 图案1-正直角三角形
        </label>
        <br/>
        <label>
            <input type="radio" name="answer" value="2" id="a_1" />
            B. 图案2-倒直角三角形
        </label>
        <br/>
        <label>
            <input type="radio" name="answer" value="3" id="a_2" />
            C. 图案3-正等腰三角形
        </label>
        <br/>
        
        <input type="submit" name="OK" id="OK" value="提交" />
    </form>

    <?php
        if(isset($_POST['OK'])) {
            $face = $_POST['answer'];

            if ($face == 1) {
                echo "图案1-正直角三角形";
                echo "<br>";
                for ($i = 1; $i <= 5; $i++) {
                    for ($j = 1; $j <= 5 - $i; $j++)
                        echo "&nbsp;&nbsp";
                    for ($k = 1; $k <= $i; $k++)
                        echo "*";
                    echo "<br>";
                }
            } else if ($face == 2) {
                echo "图案2-倒直角三角形";
                echo "<br>";
                for ($i = 1; $i <= 5; $i++) {
                    for ($k = 1; $k <= 6 - $i; $k++)
                        echo "*";
                    echo "<br>";
                }
                
            } else {
                echo "图案3-正等腰三角形";
                echo "<br>";
                for ($i = 1; $i <= 5; $i++) {
                    for ($j = 1; $j <= 5 - $i; $j++)
                        echo "&nbsp;&nbsp";
                    for ($k = 1; $k <= 2 * $i - 1; $k++)
                        echo "*";
                    echo "<br>";
                }
            }

        }
    ?>
</body>

</html>