<?php
    $str = "admin";
    echo crypt($str)."<br>";
    echo crypt($str, "OK")."<br>";
    echo crypt($str, "MY");
?>



<?php
    $A = "admin888";
    echo md5($A)."<br>";
    echo md5($A, true);
?>