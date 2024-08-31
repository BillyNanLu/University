<?php
    $pw = "admin888";
    $len = strlen($pw);
    for ($i = 0; $i < $len; $i++) {
        $C = ord($pw[$i])^5;
        $pw[$i] = chr($C);
    }
    echo "加密后的密码是".$pw;
?>