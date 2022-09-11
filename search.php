<?php
    include("templates/header.php");
    include("dbcon.php");
?>
<style>

body{ 
    background-image:linear-gradient(to top right , rgba(48,152,152,0.5) , rgba(255,159,0,0.5));
    width:100%;
    height:100vh;
    background-attachment:fixed;
    background-size:cover;
    background-position:center;
    position: relative;
    overflow : auto;
  }

  .box{
   box-shadow: 0 5px 25px rgba(0,0,0,0.2);
  }

</style>
    </div>   
  <div>
             
    <div class="container">
        <?php $searchTerm = $_GET['search_term']; ?>
        <h2 class="text-center mt-3">Results for <?php echo $searchTerm ?></h2>
        <div class="row">
            <?php
                $sql1 = "SELECT * FROM `PLACES` WHERE MATCH (`p_name` , `descr` , `address`) against ('$searchTerm')";
                $result1 = mysqli_query($con , $sql1);
                $noResult = true;
                while($row = mysqli_fetch_assoc($result1))
                {
                    $pid = $row['p_id'];
                    $pname = $row['p_name'];
                    $pimg = $row['p_img'];
                    $noResult = false;
                    echo '<div class=col-md-4>
                    <div class="card my-5 box" style="width: 18rem;">
                        <img src="'.$pimg.'" class="card-img-top" width="500" height="200" alt="'.$pname.'">
                        <div class="card-body">
                            <h5 class="card-title">'.$pname.'</h5>
                            <a href="/Explorify/ExplorePlace.php?p_id='. $pid .'" class="btn btn-primary">View</a>
                        </div>
                    </div>
                </div>';
                }
                if($noResult)
                {
                    echo '<div class="container mx-auto" style="height : 150px;">
                            <h2 class="text-center mt-3">No Results Found for &#8221'. $searchTerm .'&#8221</h2>
                            <img src="admin/images/noResult.jpg" class="card-img-top" alt="noResults">
                         </div>';
                }
             ?>
        </div>
    </div>

    
  <?php
    include("templates/footer.php");
?>