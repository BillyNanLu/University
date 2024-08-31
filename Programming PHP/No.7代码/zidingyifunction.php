<?php
    function myFunction($A, $B) {
        $C = $A + $B;
        return $C;
    }
?>



<?php
    function mySum() {
        $A = 1;
        $B = 2;
        $C = $A + $B;
        echo "两数之和: ".$C;
    }
    function myProduct() {
        $A = 3;
        $B = 2;
        $C = $A * $B;
        echo "两数之积: ".$C;
    }

    mySum();
?>



<?php
    function myFun($A, $B) {
        $C = $A + $B;
        return $C;
    }
    $A = myFun(3, 5);
    echo $A;
?>



<?php
    function myFun($A, $B) {
        $C = $A + $B;
        return $C;
    }
    $d1 = 3;
    $d2 = 5;
    $A = myFun($d1, $d2);
    echo $A;
?>



<?php
    function myFun($A, $B) {
        $A = $A + 3;
        $B = $B + 3;
        echo '$A = '.$A.';';
        echo '$B = '.$B.'<br>';
    }
    $d1 = 3;
    $d2 = 5;
    $A = myFun($d1, $d2);
    echo '$d1 = '.$d1.';';
    echo '$d2 = '.$d2.'<br>';
?>



<?php
    function myFun($A, $B = 5) {
        $A = $A + 3;
        $B = $B + 3;
        echo '$A + 3 = '.$A.';';
        echo '$B + 3 = '.$B.'<br>';
    }
    $d1 = 3;
    $d2 = 5;
    myFun($d1, $d2);
    myFun($d1);
?>



<?php
    function myFun1() {
        $A = 1;
        $B = 2;
        echo ($A + $B)."<br>";
    }
    function myFun2() {
        myFun1();
        echo "myFun2()结束";
    }
    myFun2();
?>



<?php
    function myFun1() {
        $A = 1;
        $B = 2;
        $C = $A + $B;
        return $C;
    }
    function myFun2() {
        $A = 3;
        $B = $A + myFun1();
        return $B;
    }
    $A = myFun2();
    echo $A;
?>



<?php
    function myFun($A, $B) {
        $A = $A + 3;
        echo '$A + 3 = '.$A.'<br>';
        return;
        $B = $B + 3;
        echo '$B + 3 = '.$B.'<br>';
    }
    $d1 = 2;
    $d2 = 3;
    myFun1($d1, $d2);    
?>



<?php
    function f($N) {
        if ($N == 1)
            return 1;
        else
            return $N * f($N - 1);
    }
    echo function(5);
?>