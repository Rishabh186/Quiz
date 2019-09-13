
<?php

require 'dbcon.php';
session_start();
if(isset($_SESSION['q']))
  {
     $q=$_SESSION['q'];

         if($q<=0)
        {
           $q=1;
           $_SESSION['q']=1;
        }
   }
  else{
         echo "session expire";
       }

?>


<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>



          
     <?php
              
       $query="SELECT * FROM questions where qid= $q ";
            $result = mysqli_query($connect,$query);
                 $rows=mysqli_fetch_assoc($result);

    
       echo"<tr><td><br><form action =main2.php method =POST>".$rows['questions'];
	                           echo"</tr></td>";

	  echo"<br><tr><td><input type=radio name =check value=1>".$rows['choice1'];
	            echo"</tr></td>";

     echo"<tr><td><input type=radio name =check value=2>".$rows['choice2'];
     	echo"</tr></td>";

     echo"<tr><td><input type=radio name =check value=3>".$rows['choice3'];
     	echo"</tr></td>";

     echo"<tr><td><input type=radio name =check value=4>" .$rows['choice4'];
     	echo"</tr></td>";

     echo"<tr><td><br><input type=submit name=submit value=submit>&nbsp &nbsp &nbsp &nbsp";

         echo"<input type=submit name=remove class=remove value=Clear-response></br>";
      
    	       echo"</tr></td>";


// if(isset($_POST['check']))
// {

// $a=$_POST['check'];
// echo "";
// }
// else{
//   echo "";
// }
// }
//  $a="";
// if($a!=0){

//   $query="SELECT * FROM  answers WHERE qid='$q' AND sid='' ";
// $result=mysqli_query($connect,$query);
// if(mysqli_num_rows($result))
// {$query_row=mysqli_fetch_assoc($result);
// $query="DELETE FROM answers WHERE qid='$q' AND sid=''";
// if($result=mysqli_query($connect,$query))
// echo "";}
// $query="INSERT INTO answers (qid, sid,ans) VALUES ('$q','','$a')"; 
// $result=mysqli_query($connect,$query);
//     if($result)
//       echo "";}

//       if(isset($_POST['remove']))
//       {
// $query="SELECT * FROM  answers WHERE qid='$q' AND sid='' ";
// $result=mysqli_query($connect,$query);
// if(mysqli_num_rows($result))
// {
  
// $query="DELETE FROM answers WHERE qid='$q' AND sid=''";
// if($result=mysqli_query($connect,$query))
// echo "";}
// }
  
 
    	?>
     <!--  <script src="jquery-3.4.1.min.js"></script>
           <script>
            $(document).ready(function(){
    $("#submit").click(function(){ 
      var qid = $("#qid").val(); 
      var selected = $("input[type='radio'][name='check']:checked");
      if (selected.length > 0) { 
        answer = selected.val();
      }
      $.ajax({
        type: "POST", 
        url: "action.php", 
        data: {"questionid" : qid, "answer" : answer}, 
        dataType : 'json',
        success: function(result){ 
          
          $("#qid").val(result.questionid);
          $("#question").html(result.questions);
          $("#op1").val(result.op1);
          $("#op2").val(result.op2);
          $("#op3").val(result.op3);
          $("#op4").val(result.op4);
          $("#op1text").html(result.op1);
          $("#op2text").html(result.op2);
          $("#op3text").html(result.op3);
          $("#op4text").html(result.op4);
        }
      }); 
    });
  });
</script>
   -->



    	<form  action="main2.php" method="POST">
			<input id="previous" type="submit" name="Previous" value="Previous">

	<input id="next"  type="submit" name="Next" value="Next">
		<input id="next"  type="submit" name="exam" value="Final-Submit">


        </form>

</body>
</html>
<?php
//next button nkjkjkk

if(isset($_POST['Next'])){

	session_start();
if(isset($_SESSION['q']))
{
$_SESSION['q']=++$_SESSION['q'];
if($_SESSION['q']>10)
$_SESSION['q']=10;
echo "set";
}
else{
	echo "session not set";
}
header('Location:main2.php');
}
//previous buttons
if(isset($_POST['Previous'])){

session_start();
if(isset($_SESSION['q']))
$x=$_SESSION['q']-1;
$_SESSION['q']=$x;
header('Location:main2.php');}

$a="";

if(isset($_POST['submit']))
{
      if(isset($_POST['check']))
      {

             $a=$_POST['check']; 
               
      }   


$query="INSERT INTO `answers`( `qid`, `sid`, `ans`) VALUES ('$q','','$a')";
$result=mysqli_query($connect,$query);
}




// //question button
// if(isset($_POST['que1'])) 
// {
// 	$_SESSION['q']=1;
// 	header('Location:main2.php');}
// 	if(isset($_POST['que2'])) 
// {
// 	$_SESSION['q']=2;
// 	header('Location:main2.php');}

// if(isset($_POST['que3'])) 
// {
// 	$_SESSION['q']=3;
// 	header('Location:main2.php');
// }


?>

