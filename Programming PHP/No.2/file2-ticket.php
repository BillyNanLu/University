<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>车票</title>
</head>

<body>
    <div class="msg">
        <?php 
            $ticket = 55;
            function buy() {
                global $ticket;
                $ticket -= 1;
                echo "售票一张，余票: ".$ticket."张<br>";
            }
            function cancel() {
                global $ticket;
                $ticket += 1;
                echo "退票一张，余票: ".$ticket."张<br>";
            }

            buy();
            buy();
            cancel();
            buy();
            buy();
        ?>
    </div>
</body>

</html>