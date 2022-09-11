<?php 
    include('templates/header.php');
    include('dbcon.php');
?>

<style>
  body{
    width:100%;
    height:100vh;
    background-image:linear-gradient(to top right , rgba(48,152,152,0.5) , rgba(255,159,0,0.5));
    background-size:cover;
    background-attachment : fixed;
    background-position:center;
    position: relative;
    overflow : scroll;
  }

  .box{
   box-shadow: 0 5px 25px rgba(0,0,0,0.2);
  }
</style>

<div class="container">
  <div class="row">
      <?php
      $catid = $_GET['cat_id'];
      $sql = "SELECT * FROM `PLACES` WHERE CAT_ID = $catid";
      $result = mysqli_query($con,$sql);
      while($row = mysqli_fetch_assoc($result)){ 
        $pid = $row['p_id'];
        $pname = $row['p_name'];
        $pimg = $row['p_img'];
        echo 
          '<div class=col-md-4>
            <div class="card my-5 box" style="width: 18rem;">
                <img src="'.$pimg.'" class="card-img-top" width="500" height="200" alt="'.$pname.'">
                <div class="card-body">
                    <h5 class="card-title">'.$pname.'</h5>
                    <a href="/Explorify/ExplorePlace.php?p_id='. $pid .'" class="btn btn-primary">View</a>
                </div>
            </div>
          </div>';
      }
      ?>
  </div>
<div>

<?php 
    include('templates/footer.php');
?>