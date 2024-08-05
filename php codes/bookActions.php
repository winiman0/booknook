<?php

include("dbconn.php");

//$user_id = $_POST['user_id'];
$user_id = 1;
$response = array();
    
    // Get user study field
    $sql = "SELECT study_field FROM users WHERE user_id='$user_id'";
    $result = $dbconn->query($sql);
    $row = $result->fetch_assoc();
    $study_field = $row['study_field'];
    $response['study_field'] = $study_field;
    
    // Get books by study field
    $sql = "SELECT book_id, title FROM books WHERE study_field='$study_field' LIMIT 3";
    $result = $dbconn->query($sql);
    $books_by_study_field = array();
    while($row = $result->fetch_assoc()) {
        array_push($books_by_study_field, $row);
    }
    $response['books_by_study_field'] = $books_by_study_field;
    
    // Get top-rated books
    $sql = "SELECT books.book_id, books.title, AVG(reviews.usefulness_rating + reviews.helpful_rating) as avg_rating 
            FROM books JOIN reviews ON books.book_id = reviews.book_id 
            GROUP BY books.book_id ORDER BY avg_rating DESC LIMIT 3";
    $result = $dbconn->query($sql);
    $top_rated_books = array();
    while($row = $result->fetch_assoc()) {
        array_push($top_rated_books, $row);
    }
    $response['top_rated_books'] = $top_rated_books;

    echo json_encode($response);


?>
