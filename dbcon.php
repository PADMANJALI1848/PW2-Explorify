<?php
        $con = mysqli_connect('localhost','root','','Explorify');
        if(!$con)
        {
            echo "Connection failed " . mysqli_connect_error();
        }
?>