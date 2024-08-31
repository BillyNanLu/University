<?php
    $arr1 = array(1, 2, 3, 4);
    $arr2 = array('a', 'b', 'c', 'd');
    array_push($arr1, 0);
    array_push($arr2, 'e', 'f');
    print_r($arr1);
    echo "<br>";
    print_r($arr2);
    ?>



<?php
    $arr = array(1, 2, 3, 4, 5);
    array_pop($arr);
    print_r($arr);
    ?>
