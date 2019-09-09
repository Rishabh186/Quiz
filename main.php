<html>
<head><title>Quiz</title></head>
<body>

<?php
 
$mins = date("i");
 
if ($mins >= 0 && $mins < 30)
{
    $timestr = date("H").':30';
}
else
{
    $hour = (date("H") == 23) ? 00 : date("H")+1;
    $timestr = $hour.':00';
}
 
$timeleft = strtotime($timestr) - time();
 
?>
 
<script type="text/javascript">
var timeleft = <?php print $timeleft; ?>;
window.onload = function() {
    timer = setInterval(function() {
        timeleft = (timeleft == 0) ? 1800 : timeleft-1;
        document.getElementById('timeleft').innerHTML = timeleft;
    }, 1000);
}
</script>
 
<span id="timeleft"><?php echo $timeleft; ?></span> seconds left

<form method="post" action="check.php">

<?php
require 'dbcon.php';
session_start();

for($i=1;$i<=10;$i++)
{
$q="SELECT * FROM questions where qid=$i";
$query = mysqli_query($connect,$q);
$rows=mysqli_fetch_assoc($query);
echo"<tr><td><br><form action =questions.php method =POST>".$rows['questions'];
	echo"</tr></td>";
	echo"<br><tr><td><input type=radio name =quizcheck[$i] value=1>".$rows['choice1'];
		echo"</tr></td>";

    echo"<tr><td><input type=radio name =quizcheck[$i] value=2>".$rows['choice2'];
    	echo"</tr></td>";

    echo"<tr><td><input type=radio name =quizcheck[$i] value=3>".$rows['choice3'];
    	echo"</tr></td>";

    echo"<tr><td><input type=radio name =quizcheck[$i] value=4>" .$rows['choice4'];
    	echo"</tr></td>";
}
?>
<input type="submit" name="submit" value="Submit" class='btn btn-success'>
</form>
</body>
</html>