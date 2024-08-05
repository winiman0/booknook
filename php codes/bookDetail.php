<?php
    include("dbconn.php");

    $book_id=$_POST['book_id'];
   
    $sql= "SELECT book_id, title, author, university, semester, study_field, synopsis, edition, publication_year, isbn10, isbn13, file_path
         FROM books
          WHERE book_id= '$book_id'";

    $query = mysqli_query($dbconn, $sql) or die ("Error: " . mysqli_error());

    while( $rowr= mysqli_fetch_assoc($query))
    {
        $csvOutput[] = $rowr;
        
    }

    echo json_encode($csvOutput,JSON_UNESCAPED_UNICODE);
    exit;
?>