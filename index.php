<?php
include("templates/header.php");
include('dbcon.php');
?>

<style>
  body{
    width:100%;
    height:100vh;
    background-image:linear-gradient(rgba(0,0,0,0.5) , rgba(0,0,0,0.5)),url('admin/images/homepage.jpeg');
    background-size:cover;
    background-position:center;
    position: relative;
    overflow:hidden;
  }
  
  .content{
    width:100%;
    color:#fff;
    position:absolute;
    top:50%;
    transform:translateY(-50%);
    text-align : center;
  }
  .content h2{
    font-size:60px;
  }

  .content p{
      font-size:40px;
      margin:20px auto;
      line-height:35px;
  }
  a{
    text-decoration:none;
    color:#fff;
  }
  button{
    color:#fff;
    text-align : center;
    padding:10px 25px;
    background:transparent;
    border:1px solid #fff;
    border-radius:20px;
    outline:none;
    cursor:pointer;
  }
</style>

        
    <!--<div id="caption">
        <h1> A good start begins here....</h1>
    </div>-->
    
    <div class="home">
          <div class="content">
            <h2>NEW TO BENGALURU????</h2>
            <p>Explore the places!!</p>
            <button><a href="discover.php">DISCOVER</a></button>
            <button class="ml-3"><a href="/Explorify/AddPlace.php">ADD PLACE</a></button>
          </div>
    </div>



<?php
include("templates/footer.php");
?>