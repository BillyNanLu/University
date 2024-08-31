<?php
    $num = 2;
    $str = "惠州";
    printf("在%s中有%u百万辆自行车。", $str, $num);
?>



<?php
    $num = 123;
    printf("两位小数格式: %1\$.2f<br>整数格式: %1\$u", $num);
?>



<?php
    $A = 95;
    $B = 23.12;
    printf("变量A两位小数格式: %1\$.2f<br>变量B整数格式: %2\$u<br>变量A整数格式: %1\$u", $A, $B);
?>



<?php
    $A = "HelloWorld";
    echo "变量A的长度是: ".strlen($A)."<br>";
    printf("%10s<br>", $A);
    printf("%'*15s<br>", $A);
    printf("%'*15.5s<br>", $A);
?>



<?php
    $A = "HelloWorld";
    $B = printf("%'*14s", $A);
?>
