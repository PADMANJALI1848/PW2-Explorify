<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <title>Login</title>
</head>
<body>
<?php
$con = mysqli_connect('localhost', 'root','','Explorify');

if (!$con) {
    echo mysqli_connect_error();
}

mysqli_select_db($con, 'Explorify');

$email = mysqli_real_escape_string($con,$_POST['email']);

$password = ($_POST['pswd']);

$username= mysqli_real_escape_string($con,$_POST['username']);
$sql = "SELECT * FROM logindata WHERE email = '$email' && password ='$password' && username='$username'";
$result = mysqli_query($con , $sql);
if(mysqli_num_rows($result) > 0)
{
    echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>User already exists!!</strong><a href="login.php"> Click to SignUp again</a>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close" style="outline: none;">
                    <span aria-hidden="true">&times;</span>
                </button>
          </div>';
}
else{
$query = "INSERT INTO logindata (email,password,username) VALUES('$email','$password','$username')";

mysqli_query($con, $query);

header('location:index.php');
}
?>
<script>
  document.addEventListener('DOMContentLoaded', () => {
    $('.alert').alert()
  })
</script>
</body>
</html>