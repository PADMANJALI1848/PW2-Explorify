<?php
include("templates/header.php")

?>

<style >
    body{
        background-image:url('./admin/images/aboutus.jpg');
    }
    #txt{
    width: 600px;
}
    @media only screen and (max-width:900px) {
   body{
     background-image: url("./admin/images/image4.jpg");
     background-size: cover;
     
   }
   #txt{
    color:#f4a288;
    width: 400px;

   }
}

</style>


<p class="container justify-content-center mt-5" id="txt">
          Explorify is purely dedicated for the purpose of tourism. It targets all the those people who are new to bengaluru
          by providing them the chunk of information they need.Keeping in mind the fact that every year thousand of students come to bengaluru
          for higher studies and there are many places that they can visit so keeping this in mind we created explorify on which we have
          categorised the places and our users can navigate all the categories and know about any place with a short description and its location. This 
          will surely help them to know different places.
    </p>



<?php
include("templates/footer.php")

?>