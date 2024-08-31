<?php
    echo strcmp("hello", "hello")."<br>";
    echo strcmp("hello", "hEllo")."<br>";
    echo strcmp("hello", "hello!")."<br>";
    echo strcmp("hello!", "hello");
?>



<?php
    $A = "hello! My name is Jack";
    $B = "hello! my name is Jack";
    echo strncmp($A, $B, 6)."<br>";
    echo strncmp($A, $B, 8);
?>