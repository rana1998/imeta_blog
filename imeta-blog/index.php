<?php
include_once("template-parts/footer.php");
include_once("template-parts/header_links.php");
include_once("template-parts/navbar.php");

require_once("./core/config.php");
require_once("./helper/BlogHelper.php");
$blogClass = new BlogHelper();

$tag = null;
if (isset($_GET['tag']) && !empty($_GET['tag'])) {
    // validating the tag value set in the URL
    if (preg_match('/^([a-z0-9]+-)*[a-z0-9]+$/i', $_GET['tag'])) {
        $tag = $_GET['tag'];
    } else {
        header("location:/curious/");
        return;
    }
}

$db = getDB();
$blogData = $blogClass->blogDetailsForPostHomePage($db,$tag);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    
  <meta charset="utf-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/dist/boxicons.js" integrity="sha512-Dm5UxqUSgNd93XG7eseoOrScyM1BVs65GrwmavP0D0DujOA8mjiBfyj71wmI2VQZKnnZQsSWWsxDKNiQIqk8sQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<title>Blockchain development & outsourcing | Web3 dApp Development Services - iMeta</title>
   <meta name="description" content="Unlock the potential of blockchain technology with our expert blockchain development and outsourcing services. Build cutting-edge Web3 dApps with our experienced team. Contact us today!">

   <link  href="https://imetatech.io" rel="canonical">
   <?php if(isset($_GET['tag'])) { ?>
	<script type="application/ld+json">
	{
	"@context": "https:\/\/schema.org",
	"@type": "Article",
	"name": "<?php echo $blogData->title; ?>",
	"url": "https:\/\/www.imeta.io\/blog\/<?php echo $tag;?>",
	"author": {
		"@type": "People",
		"name": "<?php echo $blogData->username; ?>"
	},
	"publisher": {
		"@type": "Organization",
		"name": "imeta.io"
	},
	"datePublished": "<?php echo date(DATE_ATOM, $blogData->PublicationDate);?>",
	"dateModified": "<?php echo date(DATE_ATOM, $blogData->LastUpdated);?>",
	<?php if(!empty($blogData->imageURL)) { ?>
	"image": "<?php echo $blogData->imageURL; ?>",
	<?php } ?>
	"headline": "<?php echo $blogData->title; ?>"
	}
	</script>
	<?php } ?>
     
  <?php echo header_links(); ?>



</head>
<body>


 <style>
  .owl-nav.disabled{
    display: none !important;
  }
  /* Styling for list items */
ul {
  list-style: none; /* Removes default list styles */
  padding-left: 0; /* Remove default padding */
}

/* Styling for individual list items */
li {
  margin-bottom: 8px; /* Adjust spacing between list items */
  font-size: 16px; /* Adjust font size */
  color: #333; /* Adjust text color */
}

/* Styling for links within list items */
li a {
  text-decoration: none; /* Remove underline from links */
  color: #fff; /* Change link color */
}

/* Hover effect for links within list items */
li a:hover {
  text-decoration: underline; /* Underline on hover */
  color: #0056b3; /* Change link color on hover */
}

.authors {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 20px;
}

.author {
    width: 100%;
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
}

.author-info {
    text-align: center;
}

.author-info h2 {
    margin-bottom: 10px;
}

.author-info a {
    text-decoration: none;
    color: #0366d6;
    display: inline-block;
    padding: 5px 10px;
    border: 1px solid #0366d6;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.author-info a:hover {
    background-color: #0366d6;
    color: #fff;
}
.author-title{
   color: #000;
}

.author-image {
    border-radius: 50%;
    width: 100px; /* Adjust the width as needed */
    height: 100px; /* Adjust the height as needed */
    /* border: 2px solid #000;  */
    /* Adjust the border properties */
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.3); /* Add shadow if needed */
    /* Add any additional styles */
}
#Banner h2 {
   color: #000;
}

#tableOfContents li a {
   color: #000 !important;
}

#tableOfContents li a:hover {
   color: #56d3a2 !important
}

.text-light {
    color: #f6f7f8 !important;
}
.display-5 {
    /* font-size: calc(1.425rem + 2.1vw);
    font-weight: 700;
    line-height: 1.3; */
}
 
</style>   

   <!---------NAVBAR START------>
<?php echo navbar_(); ?>
   <!-----NAVBAR END---->




   <section class="d-flex align-items-center position-relative overflow-hidden pt-5 pb-lg-5 mb-lg-5 mb-3 bg-dark min-vh-100" style="background-size: cover; width: 100%;height: 300px;background-image: url('<?php echo '../admin_portal/ajax/'. $blogData->imageURL; ?>');">
		<div class="container pt-5">
			<div class="row gy-5 align-items-center py-lg-5">
				<div class="col-lg-6 position-relative text-center text-lg-start">
					<a href="/" class="nav-link position-absolute top-0 start-0 mx-2 mt-lg-n5 mt-n4 p-0">
						<i class="bx bx-chevron-left me-1"></i>
						<!-- Back to the guides -->
					</a>
					<div class="mx-lg-0 mx-auto pt-lg-0 pt-4" style="max-width: 526px;">
						<h1 class="display-5 text-light">  <?php echo ($blogData->MetaDescription);?></h1>
						<p class="text-light opacity-70 mt-3 mb-0 fs-lg"><?php echo ($blogData->Subtitle);?></p>
					</div>
				</div>
			</div>
		</div>
	</section>

<section id="Banner" class="container-fluid">
   <div class="row">
      <!-- Left Side: Author & Table of Contents -->
      <div class="col-md-3 px-4">
         <!-- Author -->
         <div class="author-info">
            <!-- Author details here -->
            <!-- <h3>Author</h3> -->
            <!-- Author information -->
            <div class="authors">
               <div class="author">
                  <div class="author-info">
                     <img src="https://thumbs.dreamstime.com/z/amaranth-love-lies-bleeding-chain-link-fence-29603774.jpg?w=992" alt="Author Image" class="author-image">
                     <h6 class="author-title" style="color:#000">Kate Drozd</h2>
                     <p style="font-size:1em;">Published Date <?php echo $blogData->PublicationDate; ?></p>
                     <a href="https://www.linkedin.com/in/kate-drozd-1b2bb8191/" target="_blank">LinkedIn</a>
                  </div>
               </div>
            </div>

         </div>
         <!-- Table of Contents -->
         <div class="table-of-contents">
            <!-- Table of Contents links here -->
            <h3 class="d-lg-flex d-none mb-4 py-2 fs-4">
               <i class="bx bx-menu fs-2 align-middle me-1"></i>
               <span>Table of Contents</span>
            </h3>
            <!-- <h3>Table of Contents</h3> -->
            <ul id="tableOfContents">
               <!-- <li><a href="#section1">Section 1</a></li>
               <li><a href="#section2">Section 2</a></li> -->
               <!-- Add more sections as needed -->
            </ul>
         </div>
      </div>

      <!-- Right Side: Content -->
      <div class="col-md-9" id="blog-section">
         <!-- Main Content -->
         <div class="main-content">
            <!-- Content here -->
            <?php 
					    echo ($blogData->Content);
					
					?>
            <h2 class="mb-4">Main Content Heading</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tincidunt...</p>
            <h3 class="h4">Legal framework</h3>
                    <p class="mb-4 pb-2 fs-lg">Studying all regulatory requirements is essential to guarantee the
                        security of your platform. Mandatory requirements in the vast majority of crypto exchanges are
                        AML (Anti-Money Laundering) controls and KYC crypto processes.</p>

                    <h3 class="h4">Liquidity</h3>
                    <p class="mb-4 pb-2 fs-lg">Liquidity is an important determinant of cryptocurrency’s existence
                        exchange business. The liquidity levels determine how quickly and easily an asset can be
                        converted into another asset. If a market is illiquid, it can cause spikes in cryptocurrency
                        prices and, as a result, hinder trade execution.</p>

                    <h3 class="h4">Protection and security</h3>
                    <p class="mb-4 pb-2 fs-lg">A new report by Atlas VPN claims that the amount stolen by blockchain
                        hackers throughout the first quarter of 2022 is nearly $1.3 billion. Indeed, this profitable
                        industry is highly susceptible to hacker attacks. Thus, the protection of your cryptocurrency
                        exchange website should be constantly updated with innovative cybersecurity solutions.</p>
                    <p class="mb-4 pb-2 fs-lg">As you can already tell, manufacturing a product, which is a crypto
                        exchange in our case, is a complex process that requires a lot of capital and knowledge of the
                        volatile market. Moreover, building a basic cryptocurrency exchange from scratch also requires
                        time: at least six months for the platform itself and 12-18 months to deploy all advanced
                        features and implement regulations.</p>
                    <p class="mb-4 pb-2 fs-lg">As a brand, not everyone necessarily has the expertise and resources to
                        do it all. Developing a brand is one thing, and creating a platform is another dimension.</p>
                    <p class="mb-4 pb-2 fs-lg">If you don’t want to risk losing your investment and making a poor
                        quality or even faulty product, you need to consider an alternative: a white label crypto
                        exchange solution.</p>
					</div>
					<hr class="mb-sm-5 mb-4">
				

				
					<div id="3" class="mt-n5 pt-5 mb-sm-5 mb-4">
						<h2 class="mb-4">What is a white label crypto exchange?</h2>
						<p class="mb-4 pb-2 fs-lg">A white label crypto exchange solution – is an off-the-shelf software
                        designed for launch in a matter of days. With this SaaS solution, one just needs to make the
                        preferred customizations and start his own digital asset exchange business.</p>
                    <p class="mb-4 pb-2 fs-lg">White label solutions are gaining popularity among adventurous
                        entrepreneurs aspiring to launch a brand-new exchange facility. Of course, you can create the
                        software from scratch through the efforts of developers or by an open-source and modify it,
                        which is more cost-effective and time-saving.</p>
                    <p class="mb-4 pb-2 fs-lg">Crassula is your gateway to the world of cryptocurrencies. We can help
                        you save tons of time and money with our software package. Our crypto exchange platform is built
                        with a feature-rich technology packed with everything you need to get your exchange business
                        rolling.</p>
                    <p class="mb-4 pb-2 fs-lg">You can open accounts for your clients with unique crypto addresses,
                        allow them to exchange fiat for crypto, make crypto transfers, invest in crypto, and issue cards
                        for private and business clients.</p>
					</div>
					<hr class="mb-sm-5 mb-4">
				

				
					<div id="4" class="mt-n5 pt-5 mb-sm-5 mb-4">
						<h2 class="mb-4">What are the advantages of a white label crypto banking platform?</h2>
						<h3 class="h4 pb-3">Fast-entry into the crypto market</h3>
                    <p class="mb-4 pb-2 fs-lg">Cryptocurrency trading is growing day by day, and there are more new
                        entrants, respectively. According to the Gibraltar Finance report, the market size for
                        cryptocurrency will reach $1087.7 million by 2026. A white label crypto exchange solution is a
                        viable way to get to the market promptly. It is a ready-to-go and fully integrated business
                        architecture that you can use and adjust to your own needs.</p>

                    <h3 class="h4 pb-3">Enhanced Security</h3>
                    <p class="mb-4 pb-2 fs-lg">The most important part of an exchange is security. Unless your team has
                        cybersecurity experience to protect data during the transaction and ensure the customer’s
                        information is not stolen, outsourcing can be a backup plan. A white label partnership will take
                        over your exchange security.</p>

                    <h3 class="h4 pb-3">An existing business expansion</h3>
                    <p class="mb-4 pb-2 fs-lg">Many traditional financial or even non-financial businesses can upgrade
                        their existing infrastructure by offering quick and easy access to additional brand-new products
                        and services to their customers. For businesses trying to reach a larger audience, there’s no
                        better way to start than by partnering with a white label platform.</p>

                    <h3 class="h4 pb-3">A catalog of solutions</h3>
                    <p class="mb-4 pb-2 fs-lg">You can multiply your sales force and boost income. Thanks to a large
                        catalog of the most up-to-date solutions, a white label partnership allows you to diversify your
                        offer. You will be able to announce new products that your customers hadn’t seen before, making
                        stepping into a competitive market more seamless.</p>

                    <h3 class="h4 pb-3">Reduced costs</h3>
                    <p class="mb-4 pb-2 fs-lg">A White Label option is always cheaper than can build a platform from
                        scratch. Marketing campaigns or expensive infrastructure are no longer a burden for you. In this
                        vein, the financial benefits don’t go just to you but also to your consumers, that will
                        ultimately get more affordable products and services.</p>

                    <h3 class="h4 pb-3">Support around the clock</h3>
                    <p class="mb-4 pb-2 fs-lg">You have the opportunity to set your own priorities and focus on your
                        core competencies, while a white label partner will take care of the rest. You shouldn’t and
                        can’t be an expert in everything. So, just keep growing the business, and operational and
                        compliance activities will be carried out for you.</p>

                    <h3 class="h4 pb-3">Increased brand awareness</h3>
                    <p class="mb-4 pb-2 fs-lg">A white label cryptocurrency platform can integrate certain features,
                        tools, or metrics that are essential for your business case. In other words, it means that you
                        can fully customize it with a corporate design and a logo. Whenever your customers need trading
                        service, they will think of you.</p>
                    <p class="mb-4 pb-2 fs-lg">Ultimately, white-label outsourcing has numerous advantages. Do not
                        hesitate any longer to contact a competent service provider who can deliver a top-notch platform
                        to you in the shortest possible time.</p>
					</div>
            <!-- More content -->
         </div>
      </div>
   </div>
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

document.addEventListener('DOMContentLoaded', function () {
//   const contentSections = document.querySelectorAll('h2'); // Adjusted selector
  const section = document.querySelector('#blog-section'); // Select your specific section here
  const contentSections = section.querySelectorAll('h2');
  const tocList = document.getElementById('tableOfContents');

  contentSections.forEach(function (section, index) {
    const sectionId = `section${index + 1}`;
    section.id = sectionId; // Assign a unique ID

    const listItem = document.createElement('li');
    const anchor = document.createElement('a');

    anchor.textContent = section.textContent;
    anchor.href = `#${sectionId}`;

    anchor.addEventListener('click', function (event) {
      event.preventDefault();

      const targetId = event.target.getAttribute('href').substring(1);
      const targetSection = document.getElementById(targetId);

      window.scrollTo({
        top: targetSection.offsetTop,
        behavior: 'smooth'
      });
    });

    listItem.appendChild(anchor);
    tocList.appendChild(listItem);
  });
});

</script>

</body>
</html>