<?php
    include('templates/header.php');
    include('dbcon.php');
    if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']==true)
    { 
        $pid = $_GET['p_id']; 
        $sql = "DELETE FROM `PLACES` WHERE P_ID = '$pid'";
        $result = mysqli_query($con , $sql);
        if($result)
        {
            echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Successfully Deleted the place</strong> Thank you!!
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close" style="outline: none;">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>';
        }
    }
    else
    {
        echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
              <strong>You\'re not logged in :( </strong>Please LogIn!!
              <button type="button" class="close" data-dismiss="alert" aria-label="Close" style="outline: none;">
                  <span aria-hidden="true">&times;</span>
              </button>
            </div>';
    
    }
?>
<style>
body{ 
    width:100%;
    height:100vh;
    background-image:linear-gradient(to top right , rgba(48,152,152,0.5) , rgba(255,159,0,0.5));
    background-size:cover;
    background-position:center;
  }
</style>

<script>
  document.addEventListener('DOMContentLoaded', () => {
    $('.alert').alert()
  })
</script>

<?php
    include('templates/footer.php');
?>



