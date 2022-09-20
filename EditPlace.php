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
    background-size:cover;
    background-position:center;
    background-attachment:fixed;
    width:100%;
    height : 100vh;
  }

.form h2{
  color : #111;
  margin-bottom:45px;
  margin-left:75px;
  line-height:1em;
  font-weight:500;
  padding-left:10px;
  border-left : 5px solid orange;
}

</style>


    <?php 
        if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']==true)
        { 
          $pid = $_GET['p_id'];
          $showAlert = false;
          $method = $_SERVER['REQUEST_METHOD'];
          if($method == 'POST')
          {
            $sql1 = "SELECT userid from `PLACES` where P_ID = '$pid'";
            $res = mysqli_query($con , $sql1);
            $row = mysqli_fetch_assoc($res);
            $id = $row['userid'];
            if($_SESSION['userid'] != $id)
            {
                echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Oops! You cannot delete it :( </strong>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close" style="outline: none;">
                            <span aria-hidden="true">&times;</span>
                        </button>
                  </div>';
            }
            else if($_SESSION['userid'] == $id)
            {
              $email = $_POST['email'];
              $descr = $_POST['descr'];
              $address = $_POST['address'];
              $sql = "UPDATE `PLACES` SET descr='$descr' , address='$address' WHERE P_ID='$pid'";
              $result = mysqli_query($con , $sql);
              $showAlert = true;
              if($showAlert)
              {
                echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Changes\'ve have been saved!</strong> Thank you!!
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close" style="outline: none;">
                            <span aria-hidden="true">&times;</span>
                        </button>
                      </div>';
              }
           }
          }
                echo '<div class="container form">
                          <h2>Fill out the below form to edit the contents!!</h2>
                          <div class="row justify-content-center my-5">
                              <div class="col-lg-6">
                                <form action="'. $_SERVER['REQUEST_URI'].'" method="POST">
                                  <label for="email" class="form-label">Email address</label>
                                  <input type="email" class="form-control mb-3" id="email" required name="email" placeholder="Enter your email">

                                  <label for="description" class="form-label">Description</label>
                                  <textarea name="descr" class="form-control mb-3" style="height:140px;" id="description" placeholder="Description of the place"></textarea>

                                  <label for="address" class="form-label">Address</label>
                                  <textarea name="address" class="form-control mb-3" id="address" style="height:140px;" placeholder="Address of the place"></textarea>
                                  <div class="text-center">
                                      <button type="submit" class="btn btn-primary">Submit</button>
                                  </div>
                                </form>
                              </div>
                          </div>
                    </div>';
        }
        else
        {
              echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
              <strong>Oops!! Looks like you\'re not logged in :( </strong>Please LogIn if you wish to edit!!
              <button type="button" class="close" data-dismiss="alert" aria-label="Close" style="outline: none;">
                  <span aria-hidden="true">&times;</span>
              </button>
            </div>';
    
        }
    ?>

<script>
  document.addEventListener('DOMContentLoaded', () => {
    $('.alert').alert()
  })
</script> 

<?php
    include('templates/footer.php');
?>