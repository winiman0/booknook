<?php

    include("dbconn.php");
    $book_id=$_POST['book_id'];
    $user_id=$_POST['user_id'];
    $usefulness_rating=$_POST['usefulness_rating'];
    $helpful_rating=$_POST['helpful_rating'];
    $comment=$_POST['comment'];

    $sql = "INSERT INTO reviews (book_id, user_id, usefulness_rating, helpful_rating, comment) VALUES
           (".$book_id." , ".$user_id.", ".$usefulness_rating.", ".$helpful_rating.", '".$comment."')";

    mysqli_query($dbconn, $sql) or die ("Error: " . mysqli_error($dbconn));
?>

