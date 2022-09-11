<?php
 
 include("templates/header.php");

?>

<style>
    body{
        background-image: none;
        background-color: #D65076;
    }
    a{
        text-decoration:none;
        color:black;
    }
</style>

<?php

$places=array( "cuisines", "entertainment","Hill-tops", "Historical places", "Lakes", "Parks", "Sports","Sacred-places");

$images=array("https://c.ndtvimg.com/2022-05/o7uik5o8_world-cuisine_625x300_10_May_22.jpeg?im=FaceCrop,algorithm=dnn,width=1200,height=675",
        "https://s4.scoopwhoop.com/v4/category/entertainment.png",
        "https://www.newsnetnow.com/wp-content/uploads/2020/03/hill-stations-scaled.jpg",
        "https://www.transindiatravels.com/wp-content/uploads/mysore-palace7.jpg",
        "https://images.unsplash.com/photo-1620065263283-f084beb12754?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFrZXN8ZW58MHx8MHx8&w=1000&q=80",
        "https://www.karnatakatourism.org/wp-content/uploads/2021/09/Cubbon-Park.jpg",
        "https://content3.jdmagicbox.com/comp/def_content/sports-ground/sports-ground1-sports-ground-1-7d9x4.jpg?clr=523914",
        "https://www.tripsavvy.com/thmb/0KVl6nc01c8GpBJxSnn_1kK57Rc=/1280x853/filters:no_upscale():max_bytes(150000):strip_icc()/160317893-56a3befb5f9b58b7d0d394fe.jpg"
 )

 ?>
<?php for($x=0;$x<8;$x++){?>
<div class="d-flex justify-content-around mt-2" id="categ">
     
        <a href="categ.php?name=<?= $places[$x];?>">
        <div class="card mt-3" style="width: 18rem;">
        <img class="card-img-top" src="<?php print $images[$x] ?>" alt="Card image cap">
        <div class="card-body">
          <p class="card-text"><?php print $places[$x];  ?></p>
        </div>
       </div>
       </a>
       </div>

   <?php } ?>    


<?php
 
 include("templates/footer.php");

?>