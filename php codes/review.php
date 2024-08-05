<?php
    include("dbconn.php");

    $book_id=$_POST['book_id'];
   
    $sql= "SELECT b.book_id, r.review_id, AVG(r.usefulness_rating), AVG(r.helpful_rating), r.comment
           FROM books b JOIN reviews r ON b.book_id=r.book_id
           WHERE b.book_id= '$book_id'";

    $query = mysqli_query($dbconn, $sql) or die ("Error: " . mysqli_error());

    while( $rowr= mysqli_fetch_assoc($query))
    {
        $csvOutput[] = $rowr;
        
    }

    echo json_encode($csvOutput,JSON_UNESCAPED_UNICODE);
    exit;
?>