<?php

include("dbconn.php");

$password = $_POST['userPassword'];
$email = $_POST['email'];

$sql= "SELECT user_id, username, userPassword, email FROM users WHERE email = '$email' AND userPassword = '$password'";

$query = mysqli_query($dbconn, $sql) or die ("Error: " . mysqli_error($dbconn));

if (mysqli_num_rows($query)>0) 
{
    while($rowr= mysqli_fetch_row($query)) 
    {
        $csvOutput[] = $rowr;
    }
    echo json_encode($csvOutput,JSON_UNESCAPED_UNICODE);
    exit;

} else {
    echo "error";
}

mysqli_free_result($query);
mysqli_close($dbconn);

?>