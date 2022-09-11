<?php 
    include('templates/header.php');
    include('dbcon.php');
?>
<style>
    body{ 
    background-image:linear-gradient(to top right , rgba(48,152,152,0.5) , rgba(255,159,0,0.5));
    width:100%;
    height:100vh;
    background-attachment : fixed;
    background-size:cover;
    background-position:center;
    position : relative;
    overflow : scroll;
  }

  .box , .card{
    box-shadow: 0 5px 25px rgba(0,0,0.2);
  }

  
</style>
<?php
                if ($_SERVER["REQUEST_METHOD"] == "POST")
                {
                    $email = $_POST["email"];
                    $rating = $_POST["rating"];
                    $review = $_POST["review"];
                    $pid = $_GET['p_id'];
                    $sql3 = "SELECT * FROM `LOGINDATA` where email = '$email'";
                    $result3 = mysqli_query($con , $sql3);
                    $row3 = mysqli_fetch_assoc($result3);
                    $username = $row3['username'];
                    $sql1 = "INSERT INTO review_rating (user_name,p_id,email,user_rating,user_review) VALUES ('$username','$pid' ,'$email','$rating','$review')";
                    if (mysqli_query($con, $sql1))
                    {
                        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>Thank you for the review!!</strong> Your rating and review has been added successfully!!
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close" style="outline: none;">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                             </div>';
                    }
                    else
                    {
                        echo "Error: " . $sql1 . "<br>" . mysqli_error($con);
                    }
                }
?>

<?php 
    $pid = $_GET['p_id'];
    $sql = "SELECT * FROM `PLACES` WHERE P_ID = $pid";
    $result = mysqli_query($con , $sql);
    while( $row = mysqli_fetch_assoc($result)){ 
    $pname = $row['p_name'];
    $descr = $row['descr'];
    $address = $row['address'];
    $pimg = $row['p_img'];
    $timeEdited = $row['time_added'];
    echo  '<div class="container">
                <div class="card mx-auto my-3 rounded mb-5 box" style="width: 50rem;">
                    <img src="'.$pimg.'"  alt="'.$pname.'">
                    <div class="card-body">
                        <h5 class="card-title">'.$pname.'</h5>
                        <p class="card-text">'. $descr .'</p>
                        <p class="card-text">'. $address .'</p>
                    </div>

                    <div class="card-body">
                        <a href="/Explorify/EditPlace.php?p_id='. $pid .'" class="card-link btn btn-primary">Edit</a>
                        <a href="/Explorify/DeletePlace.php?p_id='. $pid .'" class="card-link btn btn-danger">Delete</a>
                    </div>
                    <div class="card-footer text-muted">
                        Last Edited : '. $timeEdited .'
                    </div>
                </div>
            </div>';
    }
?>
<?php
                if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']==true)
                { 
                    echo '<div class="container" style="height:500px">
                        <h2 class="text-center">Add Review</h2>
                        <div class="row justify-content-center my-5">
                            <div class="col-lg-6">
                                <form action="ExplorePlace.php?p_id='.$pid.'" method="POST">
                                            <label for="email" class="form-label">Email address</label>
                                            <input type="email" class="form-control mb-3" id="email" required name="email" placeholder="Enter your email">
                                            <label class="mt-2">Your Rating</label>
                                            <div class="rateyo" id= "rating"
                                                data-rateyo-rating="4"
                                                data-rateyo-num-stars="5"
                                                data-rateyo-score="3">
                                            </div>
                                            <span class="result">0</span>
                                            <input type="hidden" name="rating">
                                            <br>
                                            <label for="review" class="form-label mt-2">Your Review</label>
                                            <textarea name="review" class="form-control mb-3" style="height:140px;" id="review" placeholder="--Your Review--"></textarea>
                                            <input type="submit" class=" btn btn-success mb-15" name="sub" value="Sumbit">           
                                </form>
                            </div> 
                        </div> 
                    </div>';
                }
                else
                {
                    echo '<div class="container mx-auto text-center" style="height : 150px;">
                            <strong>You\'re not logged in :( !!</strong> Login to add a review.
                         </div>';
                }
?>
    <div class="container mt-5" style="height:500px">
        <h2 class="text-center mb-3">REVIEWS</h2>
        <?php
            $pid = $_GET['p_id'];
            $sql2 = "SELECT * FROM REVIEW_RATING WHERE P_ID = $pid";
            $result2 = mysqli_query($con , $sql2);
            $noResult = true;
            while($row = mysqli_fetch_assoc($result2)){ 
            $noResult = false;
            $name = $row['user_name'];
            $ratings = $row['user_rating'];
            $review = $row['user_review'];
            $time = $row['datetime'];
            echo   '<div class="card mx-auto mt-3" style="width:50rem;">
                        <div class="card-header">
                        <i class="fa fa-user" aria-hidden="true"></i>&nbsp&nbsp<strong>'. $name .'
                        </strong>
                        </div>
                        <div class="card-body">';?>
                        <?php for($i=0 ; $i<$ratings ;$i++){ ?>
                            <i class="fa fa-star" aria-hidden="true" style="color:#ffd700;"></i>
                        <?php } ?>
                        <?php echo '<p class="card-text">'. $review .'</p>
                        </div>
                        <div class="card-footer text-muted">
                            '. $time .'
                        </div>
                    </div>';
            }
            if($noResult)
            {
                echo '<div class="container mx-auto text-center" style="height : 150px;">
                         <strong>No Reviews yet!!</strong> Be the first one add a review.
                     </div>';
            }
        ?>
    </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
                
        <script>
                
                
            $(function () {
                 $(".rateyo").rateYo().on("rateyo.change", function (e, data) {
                            var rating = data.rating;
                            $(this).parent().find('.score').text('score :'+ $(this).attr('data-rateyo-score'));
                            $(this).parent().find('.result').text('rating :'+ rating);
                            $(this).parent().find('input[name=rating]').val(rating); //add rating value to input field
                       });
                });
                
         </script>

<script>
  document.addEventListener('DOMContentLoaded', () => {
    $('.alert').alert()
  })
</script>
 
<?php 
    include('templates/footer.php');
?>