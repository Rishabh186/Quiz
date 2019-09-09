<?php
require 'dbcon.php';
if(isset($_POST['submit']))
{
    if(!empty($_POST['quizcheck'])){
    	$count=count($_POST['quizcheck']);
    	echo "Out of 3 u have attempted " .$count. " questions" ;
    	$selected=$_POST['quizcheck'];
    	print_r($selected);


    	$q="select * from questions";
    	$query=mysqli_query($connect,$q);

    	   $result=0;

    	while($rows=mysqli_fetch_array($query))
    	{
    		print_r($rows['correct_ans']);
    		if($rows['correct_ans']==$selected)
    			 $result++;
    	}
    	echo "<br> Your total score is " .$result;
    }





}