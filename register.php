<?php
require'dbcon.php';
session_start();


// $con=mysqli_connect('localhost','root','','quizdb') or die("Unable to connect");

// $t="Create table s_register(
//     user VARCHAR(30) Primary key,sid Numbers
//     email VARCHAR(30),
//     mob INT(10),
//     password VARCHAR(50)
//     )";


$x=0;
$user=$_POST['student_name'];
 $email=$_POST['email'];
 $mob=$_POST['mobile'];
 $pass=$_POST['password'];
 $id=$_POST['sid'];
 $branch=$_POST['branch'];
 // $cpass=$_POST['con_pass'];
 
 if(isset($_POST["signup"])){

    
    
    if(!preg_match("/^[a-z0-9@_.]*$/",$_POST['email'])) {
        echo "<script> alert('In E-mail use only Numerals, @, Underscore,Full stop And Lower case Alphabets.')</script>";
        header("Refresh:1;url=signup.php");     #register page link
        $x=1;
    }
    // if(!preg_match("/^[0-9]*$/",$_POST['mobile'])  {
    //     echo "<script> alert('In Mobile use only Numbers and length must be 10.')</script>";
    //     $x=1;
    // }
     
     // if($pass!=$cpass){
     //    echo "<script> alert('Invalid password!!<br>Invalid Password!!!Please Try again...<br>Forwarding again to signup page.')</script>";
     //    #echo "Invalid Password!!!Please Try again...<br>Forwarding again to signup page.";
     //    $x=1;
     //    header("Refresh:5;url=signup.php");     #register page link
     //    }

    if($x==0){
        $crypt_pass=md5($pass);
        
        $sql="SELECT * from  s_register where sid = '$id' ";
        $rec=mysqli_query($connect,$sql);
        $n=mysqli_num_rows($rec);
        
        if($n==1){
            echo "Already Registered";
             header("Refresh:2;url=signup.php");
            }
            
        else{
            $ins="INSERT INTO `s_register`(`id`, `name`, `sid`, `email`, `mob`, `branch`, `pass`) VALUES ('$id','$user','$id','$email','$mob','$branch','$crypt_pass')";
            $result=mysqli_query($connect,$ins);
              header("Refresh:2;url=login.php");
            
            }
        
        }    
     }




?>
