<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>余座</title>
</head>

<body>
    <div class="msg">
        <?php 
            function seat() {
                static $surplus = 50;
                $surplus -= 1;
                echo "当前余座".$surplus."个<br>";
            }
            
            seat();
            seat();
            seat();
        ?>
    </div>
</body>

</html>