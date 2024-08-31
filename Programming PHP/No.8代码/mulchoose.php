<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form id="form1" name="form1" method="post" acion="">
        下列属于计算机存储容量的是: <br>
        <label>
            <input type="checkbox" name="answer[]" value="A" id="a_0" />
            A. 1GB
        </label>
        <br/>
        <label>
            <input type="checkbox" name="answer[]" value="B" id="a_1" />
            B. 2MB
        </label>
        <br/>
        <label>
            <input type="checkbox" name="answer[]" value="C" id="a_2" />
            C. 3GHz
        </label>
        <br/>
        <label>
            <input type="checkbox" name="answer[]" value="D" id="a_3" />
            D. 4Byte
        </label>
        <br/>
        <input type="submit" name="OK" id="OK" value="提交" />
    </form>

    <?php
        if(isset($_POST['OK'])) {
            $answer = $_POST['answer'];
            echo "您的选择: ";
            foreach ($anser as $k) {
                echo $k.'&nbsp';
            }

        }
    ?>
</body>

</html>