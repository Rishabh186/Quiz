<?php

require "dbcon.php";

session_start();

// $con=mysqli_connect('localhost','root','');

// mysqli_select_db($con,'demo');


$id=$_POST['sid'];
$pass=$_POST['password'];
 $pass1=md5($pass);
// if(!isset($_SESSION['name']))
// {
// $_SESSION['name']="User";
// $_SESSION['name1']=$name;
// }

$s="SELECT * from s_register where sid= '$id'&& pass='$pass1'";

$result=mysqli_query($connect,$s);

$num=mysqli_num_rows($result);

if($num==1)
{   
  
  header('location:instruct.php');


}
else
{
	header('location:login.php');
}

?>




