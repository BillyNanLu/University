<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<style>
    #card {
        width: 200px;
        height: 200px;
        border: solid 1px gray;
        border-radius: 10px;
        background-color: blue;
    }

    #year_month {
        font-size: 20px;
        height: 30px;
        line-height: 30px;
        color: white;
        padding-left: 10px;
        display: inline-block;
    }

    #day {
        width: 200px;
        height: 130px;
        font-size: 100px;
        line-height: 130px;
        font-weight: bold;
        color: red;
        text-align: center;
        background-color: white;
    }

    #week {
        font-size: 30px;
        width: 200px;
        height: 40px;
        line-height: 40px;
        color: #ff00dd;
        background-color: lightgray;
        text-align: center;
        border-bottom-right-radius: 10px;
        border-bottom-left-radius:10px;
    }
</style>

<body>
    <?php
        $year = date("Y", time());
        $month = date("m", time());
        $day = date("d", time());
        $weekDay = date("w", time());
        $weeks = array("星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
    ?>

    <div id="card">
        <div id="year_month"><?php echo $year."年".$month."月"; ?></div>
        <div id="day"><?php echo $day;?></div>
        <div id="week"><?php echo $weeks[$weekDay]?></div>
    </div>
</body>

</html>