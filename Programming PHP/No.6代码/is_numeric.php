<?php
    $A = 12.3;
    if (is_numeric($A))
        echo "变量A都是数字";
    else
        echo "变量A不是纯数字";
?>



<?php
    $A = 123;
    $B = "123";
    if (is_numeric($A))
        echo "A是数字<br>";
    if (is_numeric($B))
        echo "B是数字<br>";
?>
