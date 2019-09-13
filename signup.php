<html>
<head>
  <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Work+Sans' rel='stylesheet'>
<link rel="stylesheet" type="text/css" href="style.css" >
   <title> Student Register </title>
   
<body>
  <div >
 
  <form  action="register.php" method="post">
    <h2 style="font-family:Sofia;font-size:28px;color:#2F3C7E">Sign Up</h2>
    <input type="text" name="student_name" placeholder="Student Name" required="">
    <input type="number" name="sid" maxlength="10" placeholder="Student Id" required="">
    <input type="text" name="branch" placeholder="Branch" required="">
    <input type="email"  name="email" placeholder="E-mail" required="">
    <input type="tel" name="mobile" maxlength="10" placeholder="Mobile No" required="">
    
    <input type="password" name="password" placeholder="Password" required="">
     
    <button  type="submit" name="signup">Sign up</button> 
    
  </form>
</div>


</body>
</head>
</html>