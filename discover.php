<?php
include("templates/header.php");
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
      $sql = "SELECT * FROM `CATEGORIES`";
      $result = mysqli_query($con,$sql);
      while($row = mysqli_fetch_assoc($result)){ 
        $catid = $row['cat_id'];
        $catname = $row['cat_name'];
        $catimg = $row['cat_img'];
        echo 
          '<div class="col-md-4">
            <div class="card my-5 box" style="width: 18rem;">
              <img src="'.$catimg . '" class="card-img-top" width="500" height="200" alt="'.$catname.'">
              <div class="card-body">
                  <h5 class="card-title">'.$catname.'</h5>
                  <a href="/Explorify/Explorecategory.php?cat_id='.$catid.'" class="btn btn-primary">Explore Places!!</a>
              </div>
            </div>  
          </div>';
      }
      ?>
  </div>
<div>

<?php
include("templates/footer.php");
?>