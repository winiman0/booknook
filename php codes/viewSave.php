<?php
include("dbconn.php"); 
$user_id = $_POST['user_id'];

$sql="select b.book_id, b.title , s.user_id from users s 
      JOIN saved ss ON s.user_id=ss.user_id 
      JOIN books b ON b.book_id = ss.book_id WHERE s.user_id = '$user_id'";
$res=mysqli_query($dbconn,$sql) or die(mysqli_error($dbconn));
while($r=mysqli_fetch_array($res,MYSQLI_ASSOC)){
	$json[]=$r;
}
echo json_encode($json,JSON_UNESCAPED_UNICODE);

mysqli_free_result($res);
mysqli_close($dbconn);
?>
