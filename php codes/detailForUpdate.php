<?php
include("dbconn.php");

$user_id=@$_POST['user_id']; 
//$sid=1; 

$sql="select * from users where user_id=$user_id";
$res=mysqli_query($dbconn,$sql) or die(mysqli_error($dbconn));
$r=mysqli_fetch_array($res,MYSQLI_NUM);
$json[]=$r;
echo json_encode($json,JSON_UNESCAPED_UNICODE);
mysqli_free_result($res);
mysqli_close($dbconn);
?>