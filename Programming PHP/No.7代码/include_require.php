<?php
    echo "当前文件位置: 5-13A.php";
    include("5-13B.php");
?>



<?php
    echo "<hr>";
    echo "当前文件名5-13B.php";
?>



<?php
    echo "当前代码位置: 1<br>";
    include("A.php");
    echo "当前代码位置: 2<br>";
    include("A.php");
    echo "当前代码位置: 3<br>";
?>