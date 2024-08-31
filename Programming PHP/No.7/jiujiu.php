<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <table border="0">
        <?php
            for($i = 1; $i <= 9; $i++) {
                echo "<tr>";
                for ($j = 1; $j <= $i; $j++)
                    echo "<td width=70px>".$j." * ".$i." = ".($i * $j)."</td>";
                echo "</tr>";
            }
        ?>
    </table>
</body>

</html>