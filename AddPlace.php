<?php 
    include('templates/header.php');
    include('dbcon.php');
?>

<style>
.form{
  position : relavtive;
  padding : 50px 40px;
  background : #fff;
  border-radius : 20px;
  box-shadow: 0 5px 25px rgba(0,0,0.2);
  margin-top : 40px;
  width:65%;
}

body{ 
    background-image:linear-gradient(to top right , rgba(48,152,152,0.5) , rgba(255,159,0,0.5));
    width:100%;
    height:100vh;
    background-size:cover;
    background-position:center;
    position: relative;
    overflow : auto;
  }
  
.form h2{
  color : #111;
  margin-bottom:45px;
  margin-left:60px;
  line-height:1em;
  font-weight:500;
  padding-left:10px;
  border-left : 5px solid orange;
}

</style>


    <?php 
        $showAlert = false;
        $method = $_SERVER['REQUEST_METHOD'];
        if($method == 'POST')
        {
          $email = $_POST['email'];
          $pname = $_POST['p_name'];
          $descr = $_POST['descr'];
          $address = $_POST['address'];
          $pimg = $_POST['p_img'];
          $catname = $_POST['category'];
          $catsql = "SELECT * FROM `CATEGORIES` WHERE CAT_NAME = '$catname'";
          $catresult = mysqli_query($con , $catsql);
          $catrow = mysqli_fetch_assoc($catresult);
          $catid = $catrow['cat_id'];
          $sql = "INSERT INTO `PLACES`(p_name , cat_id , descr , address , p_img) VALUES ('$pname' ,  '$catid' , '$descr' , '$address' , '$pimg')";
          $result = mysqli_query($con , $sql);
          $showAlert = true;
          if($showAlert)
          {
            echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Successfully added the place!!</strong> You can now view it!!
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  </div>';
          }
        }
    ?>


    <div class="container form">
        <h2>Fill out the below form to Add a place of your choice!!</h2>
        <div class="row justify-content-center my-5">
            <div class="col-lg-6">
              <form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="POST">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control mb-3" id="email" required name="email" placeholder="Enter your email">

                <label for="name" class="form-label">Name of the place</label>
                <input type="text" class="form-control mb-3" id="name" required name="p_name" placeholder="Enter Name">

                <label for="category" class="form-label">Choose a category you want to add under : </label>
                <select name="category" class="form-select mb-3" id="category">
               <?php 
                    $sql1 = "SELECT * FROM `CATEGORIES`";
                    $result = mysqli_query($con , $sql1);
                    while($row = mysqli_fetch_assoc($result)){ 
                            $catid = $row['cat_id'];
                            $catname = $row['cat_name'];
                            echo 
                                    '<option value="'. $catname .'">'. $catname .'</option>';
                        }
                ?>
                </select>
                <br>
                <label for="description" class="form-label">Description</label>
                <textarea name="descr" class="form-control mb-3" style="height:140px;" id="description" placeholder="Description of the place"></textarea>

                <label for="address" class="form-label">Address</label>
                <textarea name="address" class="form-control mb-3" id="address" style="height:140px;" placeholder="Address of the place"></textarea>

                <label for="image" class="form-label">Image</label>
                <textarea name="p_img" class="form-control mb-3" id="image" style="height:140px;" placeholder="Link of the images"></textarea>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
        </div>
    </div>
    

<?php
    include('templates/footer.php');
?>