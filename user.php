<?php
session_start(); 

if(!isset($_SESSION["username"]))
{
    header("Location:../project/header.php");

}
$conn = mysqli_connect('localhost','root','','project');
// Check connection

$username = $_SESSION["username"];
$id_query = "select id from user where username='$username'";
$id_result = mysqli_query($conn, $id_query);
$id_array = mysqli_fetch_assoc($id_result);
$id = $id_array['id'];

$user_query = "select student_usn, name,room_no, sem, branch from user_details where id='$id'";
$user_result = mysqli_query($conn, $user_query);
$user_array = mysqli_fetch_assoc($user_result);

?>



<!DOCTYPE html>
<html>
<head>
    <title>Mess feedback</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="script.js"></script>
    <link rel="stylesheet" type="text/css" href="styles/style.css">
</head>
<body>


 <!--Nav-bar-->
 <nav class="navbar navbar-expand-lg navbar-white bg-white">
        <a class="navbar-brand" id="big" href="#"><b>MESS FEEDBACK</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ml-auto">
                <a class="nav-item nav-link" href="home.php"><i class="fa fa-fw fa-home"></i>Home</i></a>
                <a class="nav-item nav-link" href="user.php"><i class="fa fa-fw fa-user"></i><?php echo $username ?></i></a>
                <a class="nav-item nav-link" href="header.php"><i class="fa fa-fw fa-power-off"></i>Logout</i></a>
            </div>
        </div>
    </nav>

    <br>
    <h1 style="text-align:center">Welcome</h1>
    <h3 style="text-align:center"><?php echo $user_array['name'] ?></h3>
    <link rel="stylesheet" type="text/css" href="styles/login.css">
    <div class="pic"><img src="happy.jpeg"></div>
    <br>
    <br>
    <div class="user-info" style="text-align:center; font-size:18px;">
        <p>Enroll no: <?php echo $user_array['student_usn'] ?></p>
        <p>Room no: <?php echo $user_array['room_no'] ?></p>
        <p>SEM: <?php echo $user_array['sem'] ?></p>
        <p>Branch: <?php echo $user_array['branch'] ?></p>
    </div>
    


    <br>
      <!-- Footer -->
      <div>
        <footer class="page-footer bg-dark">
            <div>
                <p style="color:white" class="h6 text-center footer-copyright p-4">Crafted with <span style="color: deeppink">Love</span></p>
                <div class="contact-footer">
                    <span>Contact Us</span>
                    <span>Email : iiitamess@gmail.com Phone number : 1234567890</span>
                </div>
            </div>
        </footer>
    </div>



</body>

</html>
