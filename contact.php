<?php
include("templates/header.php")

?>

<style >
    body{
        background-image:url('./admin/images/image5.jpg');
    }
    
    @media only screen and (max-width:900px) {
   body{
     background-image: url("./admin/images/image4.jpg");
     background-size: cover;

     
   }

 


  
}



</style>


  

<div class="d-flex container-fluid justify-content-around mt-5" id="categ">
      
<a   href="https://www.instagram.com/pankaj__sharma79">
     
     <img class="card-img-top" src="./admin/images/instagram.png" alt="Card image cap" height="100" width="100">
     
    
    </a>
   
    <a   href="">
     
     <img class="card-img-top" src="./admin/images/twitter.png" alt="Card image cap" height="100" width="100">
     
    
    </a>
    
   
    
    <a   href="">
     
     <img class="card-img-top" src="./admin/images/linkedin.png" alt="Card image cap" height="100" width="100">
     
    
    </a>

    <a   href="mailto:pankaj.cs20@bmsce.ac.in">
     
     <img class="card-img-top" src="./admin/images/gmail.png" alt="Card image cap" height="100" width="100">
     
    
    </a>


    </div>



<?php
include("templates/footer.php")

?>
