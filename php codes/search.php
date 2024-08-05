<?php
include("dbconn.php");


    $isbn = $_POST['isbn'];
    $isbn = mysqli_real_escape_string($dbconn, $isbn);

    // Query the database for the book with the provided ISBN in either isbn10 or isbn13
    $sql = "SELECT book_id, title FROM books WHERE isbn10 = '$isbn' OR isbn13 = '$isbn'";
    $result = mysqli_query($dbconn, $sql);

    if (mysqli_num_rows($result) > 0) {
        // Fetch the book details
        $book = mysqli_fetch_assoc($result);

        // Return the book details as JSON
        echo json_encode($book);
    } else {
        echo json_encode(array("error" => "No book found with the provided ISBN."));
    }

?>
