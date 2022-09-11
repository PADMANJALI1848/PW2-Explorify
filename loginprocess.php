<?php

session_start();

include("datauth.php");

if(isset($_POST['login']));
{
    $user_unsafe=$_POST['email'];
    $pass_unsafe=$_POST['pswd'];

    $user=mysqli_real_escape_string($con,$user_unsafe);
    $pass=mysqli_real_escape_string($con,$pass_unsafe);

    $query=mysqli_query($con,"select * from logindata where email='$user'
    and password='$pass' ")or die(mysqli_error($con));

    $row=mysqli_fetch_array($query);
    $userid = $row['userid'];
    $name=$row['username'];
    $email=$row['email'];
    $counter=mysqli_num_rows($query);

    if($counter==0)
    {
        echo "<script type='text/javascript'>alert('Invalid username or password');
        
        document.location='login.php'</script>";
    }

    else{
         $_SESSION['userid'] = $userid;
         $_SESSION['email']=$email;
         $_SESSION['username']=$name;
         $_SESSION['loggedin']=true;
         echo "<script type='text/javascript'>
         
         document.location='index.php'</script>";
    }     
}

?>