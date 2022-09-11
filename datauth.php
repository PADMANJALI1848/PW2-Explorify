<?php

$con=mysqli_connect('localhost','root','','Explorify');

if(mysqli_connect_errno())
{
    echo "failed to connect to myssql;".mysqli_connect_error();
}


?>