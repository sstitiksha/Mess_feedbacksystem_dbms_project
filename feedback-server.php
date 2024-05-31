<?php

session_start();

$username = $_SESSION['username']; 
$conn = mysqli_connect('localhost','root','','project');

$get_id="select id from user where username='$username'";
$id_run=mysqli_query($conn,$get_id);
$id_array=mysqli_fetch_assoc($id_run);
$id=$id_array['id'];

$food_msg=$_POST['food_fb'];
$service_msg=$_POST['service_fb'];
$staff_msg=$_POST['staff_fb'];

$insert_sql="INSERT INTO feedback(id,service,food_quality,staff_feedback) VALUES ('$id','$food_msg','$service_msg','$staff_msg')";
mysqli_query($conn,$insert_sql);

header('location: feedback.php');

?>
