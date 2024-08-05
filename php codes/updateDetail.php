<?php
    include("dbconn.php");
    $user_id=$_POST['user_id'];

    $username=$_POST['username'];
    $email=$_POST['email'];
    $userPassword=$_POST['userPassword'];
    $university=$_POST['university']; 
    $study_field=$_POST['study_field'];


    $sql="UPDATE users 
        SET username='$username', 
            email='$email', 
            userPassword='$userPassword', 
            university='$university', 
            study_field='$study_field'
        where user_id='$user_id'";

    $res=mysqli_query($dbconn,$sql) or die(mysqli_error($dbconn));
    if ($res===true) 
        echo "OK_EDIT";
    mysqli_close($dbconn);
?>