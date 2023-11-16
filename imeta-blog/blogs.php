<?php
include_once("template-parts/footer.php");
include_once("template-parts/header_links.php");
include_once("template-parts/navbar.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    
  <meta charset="utf-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

	<title>Blockchain development & outsourcing | Web3 dApp Development Services - iMeta</title>
   <meta name="description" content="Unlock the potential of blockchain technology with our expert blockchain development and outsourcing services. Build cutting-edge Web3 dApps with our experienced team. Contact us today!">


   <link  href="https://imetatech.io/blogs" rel="canonical">
     
  <?php echo header_links(); ?>

</head>
<body>


 <style>
  .owl-nav.disabled{
    display: none !important;
  }
</style>   

   <!---------NAVBAR START------>
<?php echo navbar_(); ?>
   <!-----NAVBAR END---->






<section class="Blog">
   

<div class="outer"> 
<div class="heading">
   <h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum, tellus non interdum luctus, orci sem semper augue, id condimentum arcu magna at nulla.</h1>
</div>
<img src="assets/images/blog.webp" class="blog-img">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum, tellus non interdum luctus, orci sem semper augue, id condimentum arcu magna at nulla. Nulla ullamcorper ipsum ut velit pellentesque pellentesque. Fusce sit amet odio eget nisl ullamcorper condimentum. Nam bibendum auctor mi. Phasellus et tincidunt odio. Nullam laoreet egestas purus, in pharetra dui. Aenean mattis arcu ut nisl congue, eu semper tortor volutpat.</p>
</div>  

<div class="outer"> 
<div class="heading">
   <h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum, tellus non interdum luctus, orci sem semper augue, id condimentum arcu magna at nulla.</h1>
</div>
<img src="assets/images/blog2.webp" class="blog-img">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum, tellus non interdum luctus, orci sem semper augue, id condimentum arcu magna at nulla. Nulla ullamcorper ipsum ut velit pellentesque pellentesque. Fusce sit amet odio eget nisl ullamcorper condimentum. Nam bibendum auctor mi. Phasellus et tincidunt odio. Nullam laoreet egestas purus, in pharetra dui. Aenean mattis arcu ut nisl congue, eu semper tortor volutpat.</p>
</div> 

<div class="outer"> 
<div class="heading">
   <h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum, tellus non interdum luctus, orci sem semper augue, id condimentum arcu magna at nulla.</h1>
</div>
<img src="assets/images/blog3.jpeg" class="blog-img">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum, tellus non interdum luctus, orci sem semper augue, id condimentum arcu magna at nulla. Nulla ullamcorper ipsum ut velit pellentesque pellentesque. Fusce sit amet odio eget nisl ullamcorper condimentum. Nam bibendum auctor mi. Phasellus et tincidunt odio. Nullam laoreet egestas purus, in pharetra dui. Aenean mattis arcu ut nisl congue, eu semper tortor volutpat.</p>
</div> 

</section>







<section id="Start">
   
   <div class="row">
      <div class="col-md-12 text-center">
         <h2>START BUILDING<br>
YOUR BLOCKCHAIN VENTURE</h2>
      </div>
   </div>

   
   <div class="row">
      <div class="col-md-6">
         <input type="text" class="input" name="" placeholder="First Name">
      </div>
      <div class="col-md-6">
         <input type="text" class="input" name="" placeholder="Last Name">
      </div>

      <div class="col-md-6">
         <input type="number" class="input" name="" placeholder="Phone Number">
      </div>
      <div class="col-md-6">
         <input type="email" class="input" name="" placeholder="Email Address">
      </div>

      <div class="col-md-6">
         <select>
            <option>Select Industry</option>
            <option>Banking</option>
            <option>Supply Chain</option>
            <option>Automotive</option>
            <option>Energy</option>
            <option>Healthcare</option>
            <option>Pharma</option>
            <option>Real Estate</option>
            <option>Transportation</option>
         </select>
      </div>
      <div class="col-md-6">
         <select>
            <option>Select Expected Budget</option>
            <option>10k-20k</option>
            <option>20k-30k</option>
            <option>30k-40k</option>
            <option>40k-50k</option>
         </select>
      </div>

      <div class="col-md-12">
         <textarea placeholder="Type a message..." rows="6"></textarea>
      </div>
   </div>

   <input type="radio" id="html" name="fav_language" value="agree">
   <label for="html">I agree that my personal information will be processed and stored by IMeta</label><br>

   <button class="send-btn">Send Message</button>



</section>






   <!---------FOOTER START------>
<?php echo footer_(); ?>
   <!---------FOOTER END------>

<!--------------------------- SCRIPTS ------------------------------------->

<!-- <script src="assets/js/bootstrap.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.3/js/bootstrap.min.js" integrity="sha512-8qmis31OQi6hIRgvkht0s6mCOittjMa9GMqtK9hes5iEQBQE/Ca6yGE5FsW36vyipGoWQswBj/QBm2JR086Rkw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- <script src="assets/js/owl.carousel.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="assets/js/sweetalert2.min.js"></script>





<script>
   $('#logo_slider').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    dots:false,
    nav:false,
    autoplay:true,
    autoplayTimeout:1000,
    autoplayHoverPause:true,
    responsive:{
        0:{
            items:2
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
})
</script>

<script>
   $('#industry_slider').owlCarousel({
    loop:true,
    margin:30,
    nav:true,
    dots:false,
    nav:false,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:3
        }
    }
})


$('#team_slider').owlCarousel({
    loop:true,
    margin:40,
    nav:true,
    dots:false,
    nav:false,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:5
        }
    }
})



$('#client_slider1').owlCarousel({
    loop:true,
    margin:30,
    nav:false,
    dots:false,
    autoplay:true,
    autoplayTimeout:1000,
    autoplayHoverPause:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:3
        }
    }
})

$('#client_slider2').owlCarousel({
    loop:true,
    margin:30,
    nav:false,
    dots:false,
    autoplay:true,
    autoplayTimeout:2000,
    autoplayHoverPause:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:3
        }
    }
})

$('#client_slider3').owlCarousel({
    loop:true,
    margin:30,
    nav:false,
    dots:false,
    autoplay:true,
    autoplayTimeout:3000,
    autoplayHoverPause:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:3
        }
    }
})

</script>


<script>
   var carouselEl = $('#industry_slider');

   carouselEl.owlCarousel({
   });

   $(".right-btn").click(function() {
      carouselEl.trigger('next.owl.carousel');
   });

   $(".left-btn").click(function() {
      carouselEl.trigger('prev.owl.carousel');
   });


   var carouselEl2 = $('#team_slider');

   carouselEl2.owlCarousel({
   });

   $(".team-right-btn").click(function() {
      carouselEl2.trigger('next.owl.carousel');
   });

   $(".team-left-btn").click(function() {
      carouselEl2.trigger('prev.owl.carousel');
   });
</script>



<script>
   function animateValue(obj, start, end, duration) {
  let startTimestamp = null;
  const step = (timestamp) => {
    if (!startTimestamp) startTimestamp = timestamp;
    const progress = Math.min((timestamp - startTimestamp) / duration, 1);
    obj.innerHTML = Math.floor(progress * (end - start) + start);
    if (progress < 1) {
      window.requestAnimationFrame(step);
    }
  };
  window.requestAnimationFrame(step);
}

const obj = document.getElementById("value");
animateValue(obj, 0, 8, 10000);

const obj2 = document.getElementById("value2");
animateValue(obj2, 0, 2, 10000);

const obj3 = document.getElementById("value3");
animateValue(obj3, 0, 150, 10000);

const obj4 = document.getElementById("value4");
animateValue(obj4, 0, 200, 10000);

</script>



</body>
</html>