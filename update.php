<?php

$conn = mysqli_connect('localhost','root','','project');
if(isset($_POST['enter'])) 
{ 

	$user=$_POST["username"];
	$pass=$_POST["password"];
	$query=("UPDATE `user` SET `password`='$pass' WHERE username='$user'");
	$run=mysqli_query($conn, $query);
	if ($run)
	 	echo "<h1 style='color: white;'>updated</h1>";
	 else
	echo mysqli_error($conn);
}
header("Location: header.php");
?>
