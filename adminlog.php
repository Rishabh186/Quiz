<?php
session_start();
require 'dbcon.php';
 if(isset($_POST['submit'])){
 	$username =$_POST['username'];
 	$pass=$_POST['password'];
 	$q = "SELECT * FROM admin where username ='$username'and password ='$pass'";
 	$q_run=mysqli_query($connect,$q);
 	$result=mysqli_num_rows($q_run);
 	if($result>0){
 		$_SESSION['username']=$username;
 		header(location:'adminpage.php');

 	}
 	else
 	{
         echo"<script>alert("You are not admin");</script>";
 	}


 }


?>