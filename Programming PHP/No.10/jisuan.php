<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>计算</title>
</head>

<body>
    <form action="" name="form1" method="post">
    	计算：f(x, y, z) = (x + y) / (y - z) + (y + 2z) / (x + 3z)
    	<br>
        x:<input type="number" name="X">
        <br><br>
        y:<input type="number" name="Y">
        <br><br>
        z:<input type="number" name="Z">
        <br><br>
        <input type="submit" name="ok" value="提交">
    </form>

    <?php
        function result($x, $y, $z) {
            $res = ($x + $y) / ($y - $z) + ($y + 2 * $z) / ($x + 3 * $z);
            return $res;
        } 

        if(isset($_POST['ok'])) {
            $x = $_POST['X'];
            $y = $_POST['Y'];
            $z = $_POST['Z'];
            
            echo "x = ".$x."<br>";
            echo "y = ".$y."<br>";
            echo "z = ".$z."<br>";
            echo "f(x, y, z) = (x + y) / (y - z) + (y + 2z) / (x + 3z) 的值: ".result($x, $y, $z);
        }
    ?>
  
</body>

</html>