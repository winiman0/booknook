<?php

    include("dbconn.php");
    $book_id = $_POST['book_id'];
    $user_id = $_POST['user_id'];

    $sql = "INSERT INTO saved (book_id, user_id) VALUES
           (".$book_id." , ".$user_id.")";

    mysqli_query($dbconn, $sql) or die ("Error: " . mysqli_error($dbconn));
?>

