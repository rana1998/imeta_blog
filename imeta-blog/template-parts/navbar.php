<?php function navbar_(){ ?>
	
	<!-- Navbar Here -->

<style>
  .sticky {
  position: fixed;
  top: 0;
  width: 100%;
}
</style>


   <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="z-index: 9999;">
  <div class="modal-dialog" role="document" style="margin-top: 6rem;">
    <div class="modal-content">
      <!-- <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Contact Us</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> -->
      <div class="modal-body">
        
        <div class="row">
          <div class="col-md-6 left">
            <img src="assets/images/contact-img.png" class="contact-img">
          </div>
          <div class="col-md-6 right">

            <button class="close-btn" data-dismiss="modal" aria-label="Close"><img src="assets/images/icons/close.svg"></button>
            
            <h2>Talk to our Experts</h2>

            <input type="text" name="" placeholder="Full Name">
            <input type="email" name="" placeholder="Email Address">
            <input type="number" name="" placeholder="Phone Number"><br>
            <select>
              <option>Select Service</option>
            </select><br>
            <textarea rows="5" placeholder="Type your Message...."></textarea>

            <div class="row">
              <div class="col-md-12 text-right">
                <button class="submit-btn">Submit</button>
              </div>
            </div>

          </div>
        </div>


      </div>
    </div>
  </div>
</div>



<a href="https:/wa.me/919146028585"  target="_blank" class="whatsapp_float"><i class="fa-brands fa-whatsapp whatsapp-icon"></i></a>


  
  <div class="topbar">
    <div class="row">
      <div class="col-md-6">
        <p class="first_p"><a href="mailto:info@imetatech.io"><img src="assets/images/icons/mail.svg">info@imetatech.io</a></p>
      </div>
      <div class="col-md-6 text-right">
        <p class="second_p">Our Global Presence : <img src="assets/images/icons/india.svg"> India <img src="assets/images/icons/dubai.svg"> Dubai</p>
      </div>
    </div>
  </div>


	<nav class="navbar navbar-expand-lg navbar-light bg-light" id="navbar">
  <a class="navbar-brand" href="https://imetatech.io"><img src="assets/images/logo/logo-light.svg" class="logo" id="navbar_logo_light">
                                           <img src="assets/images/logo/logo.svg" class="logo" id="navbar_logo_dark"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="https://imetatech.io" style="color:#236DD5 !important;font-weight: bolder;">HOME</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="toggle_div();">
          SOLUTIONS
        </a>
        <div class="main-dropdown"  id="main_dropdown">

   <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-blockchain-tab" data-toggle="pill" href="#pills-blockchain" role="tab" aria-controls="pills-blockchain" aria-selected="true">BLOCKCHAIN</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-nft-tab" data-toggle="pill" href="#pills-nft" role="tab" aria-controls="pills-nft" aria-selected="false">NFT</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-web3-tab" data-toggle="pill" href="#pills-web3" role="tab" aria-controls="pills-web3" aria-selected="false">WEB3</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-metaverse-tab" data-toggle="pill" href="#pills-metaverse" role="tab" aria-controls="pills-metaverse" aria-selected="false">METAVERSE</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-cryptocurrency-tab" data-toggle="pill" href="#pills-cryptocurrency" role="tab" aria-controls="pills-cryptocurrency" aria-selected="false">CRYPTOCURRENCY</a>
  </li>
</ul>

<hr/>

<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-blockchain" role="tabpanel" aria-labelledby="pills-blockchain-tab">
    
   <div class="row">
     <div class="col-md-4">
       <a href="">Blockchain Forking Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

<a href="">dApp Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>
     </div>
     <div class="col-md-4">
       <a href="">Cross-Chain Bridges Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

<a href="smart-contract-development">Smart Contract Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>
     </div>
   </div>

  </div>
  <div class="tab-pane fade" id="pills-nft" role="tabpanel" aria-labelledby="pills-nft-tab">
    
  <div class="row">
     <div class="col-md-4">
       <a href="">NFTs / NFT marketplace development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

     </div>
     <div class="col-md-4">
       <a href="">NFT Game Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

     </div>
   </div>

  </div>
  <div class="tab-pane fade" id="pills-web3" role="tabpanel" aria-labelledby="pills-web3-tab">
    
    <div class="row">
     <div class="col-md-4">
       <a href="">Web3 Consulting Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

<a href="">Wallet Development and Integration</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

     </div>
     <div class="col-md-4">
       <a href="start-dao">Start DAO</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

<a href="defi-development">DeFi tech development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

     </div>
   </div>

  </div>
  <div class="tab-pane fade" id="pills-metaverse" role="tabpanel" aria-labelledby="pills-metaverse-tab">
    
  <div class="row">
     <div class="col-md-4">
       <a href="">Metaverse Avatar development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

<a href="">Metaverse Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

     </div>
     <div class="col-md-4">
       <a href="metaverse-casino-game-development">Metaverse Games development </a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

     </div>
   </div>
 

  </div>
  <div class="tab-pane fade" id="pills-cryptocurrency" role="tabpanel" aria-labelledby="pills-cryptocurrency-tab">
    
    <div class="row">
     <div class="col-md-4">
       <a href="">Token Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

<a href="">Exchange Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

     </div>
     <div class="col-md-4">
       <a href="">Coin Development</a>
       <p>Nam molestie felis vitae turpis fermentum aliquam. 
Pellentesque vitae urna ligula.</p>

     </div>
   </div>

  </div>
</div>

        </div>
      </li>

<style>
  #main_dropdown{
    display: none;
  }

  #main_dropdown_2{
    display: none;
  }
</style>


<script>
  function toggle_div() {
  var x = document.getElementById('main_dropdown');
  if (x.style.display === 'block') {
    x.style.display = 'none';
  } else {
    x.style.display = 'block';
  }
}

function toggle_div_2() {
  var x = document.getElementById('main_dropdown_2');
  if (x.style.display === 'block') {
    x.style.display = 'none';
  } else {
    x.style.display = 'block';
  }
}
</script>





      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="toggle_div_2();">
          PRODUCT
        </a>

        <div class="main-dropdown-2"  id="main_dropdown_2">
        
        <div class="row">
          <div class="col-md-4">
       <a href="cryptocurrency-exchange-script">Cryptocurrency exchange software</a>
       <p>Built to operate the scalable digital asset exchange platforms like Crypto trading, marketplaces, OTC desk  and brokerages.</p>

       <a href="whitelabel-crypto-wallet">White label Crypto Wallet solution</a>
       <p>Get this ready-to customize solution and start building your own crypto wallet with desired features.</p>  
          </div>
          <div class="col-md-4">
        <a href="whitelabel-nft-game-solution">Whitelabel NFT Gaming Software</a>
       <p>Launch your own NFT-based games without building everything from scratch.</p>    
          </div>
          <div class="col-md-4">
        <a href="whitelabel-nft-marketplace">Whitelabel NFT Marketplace software</a>
       <p>Be ready to create an NFT Marketplace platform with the help of ready-to-go software solutions.</p>     
          </div>
        </div>

        </div>

      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          INDUSTRIES
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Banking</a>
          <a class="dropdown-item" href="#">Supply Chain</a>
          <a class="dropdown-item" href="#">Automotive</a>
          <a class="dropdown-item" href="#">Energy</a>
          <a class="dropdown-item" href="#">Healthcare</a>
          <a class="dropdown-item" href="#">Pharma</a>
          <a class="dropdown-item" href="#">Real Estate</a>
          <a class="dropdown-item" href="#">Transportation</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ABOUT US
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="about-us">About us</a>
          <a class="dropdown-item" href="#Start">Contact us</a>
          <a class="dropdown-item" href="#">Blog</a>
          <a class="dropdown-item" href="#Case">Case study</a>
          <a class="dropdown-item" href="#">Terms and conditions</a>
          <a class="dropdown-item" href="#">Privacy policy</a>
        </div>
      </li>
 <!--      <li class="nav-item">
        <a class="nav-link" href="#">GET A QUOTE</a>
      </li> -->
    </ul>
    <form class="form-inline my-2 my-lg-0">

      <a class="quote-btn" data-toggle="modal" data-target="#exampleModal">GET A QUOTE</a>

      <button class="telegram-btn"><img src="assets/images/icons/telegram.svg"></button>
      <button class="whatsapp-btn"><img src="assets/images/icons/whatsapp.svg"></button>
       
      <!-- <div class="theme-outer"> 
      <button onclick="setStyleSheet('assets/css/style2.css')" class="moon"><img src="assets/images/icons/moon.png"></button>
      <button onclick="setStyleSheet2('assets/css/style.css')"  class="sun"><img src="assets/images/icons/sun.png"></button>
      </div> -->

      <button class="lang-btn"><img src="assets/images/icons/england.svg">ENG</button>
    </form>
  </div>
</nav>



<script>
  
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}

</script>





<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/6526de10eb150b3fb9a07b98/1hcft6sov';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->


<script>

   function setStyleSheet(url){
       localStorage.setItem("number", "zero");
       window.location.reload();
    }

     function setStyleSheet2(url){
       localStorage.setItem("number", "one");
       window.location.reload();
    }


    if (localStorage.getItem("number") == 'zero') {
      var stylesheet = document.getElementById("stylesheet");
       stylesheet.setAttribute('href', 'assets/css/style2.css');

       // document.getElementById("navbar_logo_light").style.display = "none";
       // document.getElementById("navbar_logo_dark").style.display = "block";

    }
    else if(localStorage.getItem("number") == 'one'){
       var stylesheet = document.getElementById("stylesheet");
        stylesheet.setAttribute('href', 'assets/css/style.css');

        // document.getElementById("navbar_logo_light").style.display = "block";
        // document.getElementById("navbar_logo_dark").style.display = "none";
    }

   
    </script>


	
<?php } ?>
	
	