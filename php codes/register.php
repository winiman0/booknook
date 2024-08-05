<?php

include("dbconn.php");

$username = $_POST['username'];
$email = $_POST['email'];
$userPassword = $_POST['userPassword'];

   $sql = "INSERT INTO users (username, email, userPassword) VALUES 
   ('". $username ."' , '". $email ."' , '". $userPassword ."')";

    mysqli_query($dbconn, $sql) or die ("Error: " . mysqli_error($dbconn));
    

/*
include("dbconn.php");

$usercheck = $_POST['user'];
$password = $_POST['pass'];
$email = $_POST['email'];

$stmt = $dbconn->prepare("SELECT user_id FROM users WHERE username = ?");
$stmt->bind_param("s", $param_user);
$param_user = $usercheck;
$stmt->execute();
$stmt->store_result();
if ($stmt->num_rows == 1) {
    echo json_encode(["status" => "taken"]);
} else {
    $stmt->close();
    $stmt = $dbconn->prepare("INSERT INTO users (username, password, email) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $param_username, $param_password, $param_email);
    $param_username = $usercheck;
    $param_password = password_hash($password, PASSWORD_DEFAULT);
    $param_email = $email;
    if ($stmt->execute()) {
        $last_id = $dbconn->insert_id;
        echo json_encode(["status" => "success", "user_id" => $last_id, "username" => $param_username]);
    } else {
        echo json_encode(["status" => "error", "message" => "Registration failed"]);
    }
    $stmt->close();
}
$dbconn->close();
*/
?> 
