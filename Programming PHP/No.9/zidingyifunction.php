<?php
    // 函数的调用
//     function mySum() {
//         $A = 1;
//         $B = 2;
//         $C = $A + $B;
//         echo "两数之和: ".$C;
//     }
//     function myProduct() {
//         $A = 3;
//         $B = 2;
//         $C = $A * $B;
//         echo "两数之积: ".$C;
//     }

//     mySum();



    // 引用传递
//     function myFun(&$A, $B) {
//         $A += 3;
//         $B += 3;
//         echo '$A = '.$A.';';
//         echo '$B = '.$B.'<br>';
//     }
//     $d1 = 3;
//     $d2 = 5;
//     echo '$d1 = '.$d1.';';
//     echo '$d2 = '.$d2.'<br>';
//     $A = myFun($d1, $d2);
//     echo '$d1 = '.$d1.';';
//     echo '$d2 = '.$d2.'<br>';
    
    
    
    // 参数默认值
    function myFun($A, $B = 5) {
        $A = $A + 3;
        $B = $B + 3;
        echo '$A + 3 = '.$A.'<br>';
        echo '$B + 3 = '.$B.'<br>';
        echo "<br>";
    }
    $d1 = 2;
    $d2 = 3;
    myFun($d1, $d2);
    myFun($d1);


?>




