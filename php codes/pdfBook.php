<?php 
  include("dbconn.php");

    $book_id=$_POST['book_id'];
    $sql = "SELECT file_path FROM books WHERE book_id = '$book_id'";  
    $result = $dbconn->query($sql);
      
    if ($result->num_rows > 0) {
      $row = $result->fetch_assoc();
          echo json_encode($row);
      } else {
          echo json_encode(["error" => "No record found"]);
      }

?>