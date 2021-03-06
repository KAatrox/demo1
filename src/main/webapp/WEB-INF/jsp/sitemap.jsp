<!DOCTYPE html>
<html lang="en">
<%@ page pageEncoding="utf-8"%>
<head>
<title>数码商城ヾ(；ﾟ(OO)ﾟ)ﾉ</title>
<link rel="icon" href="images/logo.jpg" type="image/x-icon"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="css/animate.min.css" rel="stylesheet" type="text/css" media="all" /><!-- animation -->
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style -->   
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script>  
<!-- //js --> 
<!-- web-fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Offside' rel='stylesheet' type='text/css'> 
<!-- web-fonts -->  
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
		
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->
</head>
<body>
	<!-- header -->
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:import url="head.jsp" charEncoding="utf-8" />
	
	<!-- //header --> 	 	
	<!-- site map -->
	<div class="sitemap">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Our Sitemap</h3>
			<div class="sitemap-row"> 
				<nav class="sitemap-tabs" data-spy="affix" data-offset-top="400"> 
					<div  id="myNavbar">
						<ul> 
							<li><a href="#w3sec1"><i class="fa fa-mobile"></i> Electronics</a></li>
							<li><a href="#w3sec2"><i class="fa fa-slideshare"></i>Fashion Store</a></li>
							<li><a href="#w3sec3"><i class="fa fa-child"></i> Kids Fashion & Toys</a></li>
							<li><a href="#w3sec4"><i class="fa fa-home"></i> Home & Furniture</a></li>
							<li><a href="#w3sec5"><i class="fa fa-futbol-o"></i>Sports & Fitness</a></li> 
							<li><a href="#w3sec6"><i class="fa fa-shopping-basket"></i> Grocery Store</a></li> 
							<li><a href="#w3sec7"><i class="fa fa-gift"></i> Photo, Gifts & Office</a></li> 
							<li><a href="#w3sec8"><i class="fa fa-medkit"></i> Health & Beauty</a></li> 
							<li><a href="#w3sec9"><i class="fa fa-car"></i> Automotive</a></li> 
							<li><a href="#w3sec10"><i class="fa fa-book"></i> Books, Music & Movies</a></li> 
						</ul> 
					</div>
				</nav>	
				<div id="w3sec1" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-mobile"></i> Electronics</h3>  
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products.html">MOBILE PHONES</a></h5> 
						<ul>  
							<li><a href="products.html">Phones</a></li>
							<li><a href="products.html">Android</a></li>
							<li><a href="products.html">Windows</a></li>
							<li><a href="products.html">Black berry</a></li> 
							<li><a href="products.html">IPhones</a> </li>
							<li><a href="products.html">Tablets</a></li>
							<li><a href="products.html">IPad</a></li>
							<li><a href="products.html">Feature Phones</a></li> 
						</ul>  
						<h5 class="sitemap-text-title"><a href="products.html">PERSONAL CARE</a></h5> 
						<ul> 
							<li><a href="products.html">Epilator</a></li> 
							<li><a href="products.html">Hair Styler</a></li>
							<li><a href="products.html">Trimmer &amp; Shaver</a></li>
							<li><a href="products.html">Health Care</a></li> 
							<li><a href="products.html">cables</a></li>
						</ul> 
					</div>	
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products.html">LARGE APPLIANCES</a></h5>
						<ul> 
							<li><a href="products.html">Refrigerators</a></li> 
							<li><a href="products.html">Washing Machine</a></li>
							<li><a href="products.html">Office Technology</a></li>
							<li><a href="products.html">Air conditioner</a></li>
							<li><a href="products.html">Home Automation</a></li>
						</ul>  
						<h5 class="sitemap-text-title"><a href="products.html">SMALL DEVICES</a></h5>
						<ul>  
							<li><a href="products.html">Router &amp; Modem</a></li> 
							<li><a href="products.html">Cloud Storage</a></li>
							<li><a href="products.html">Hard Disk</a></li> 
							<li><a href="products.html">Pen Drive</a></li>
							<li><a href="products.html">Memory card</a></li> 
							<li><a href="products.html">Security Devices</a></li>  
							<li><a href="products.html">Office Supplies</a></li> 
							<li><a href="products.html">Auto Electronics</a></li>  
						</ul> 
					</div>	
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products.html">ENTERTAINMENT</a></h5> 
						<ul>   
							<li><a href="products.html">Tv &amp; Accessories</a></li>
							<li><a href="products.html">Digital Camera</a></li>
							<li><a href="products.html">Gaming</a></li>
							<li><a href="products.html">Home Audio &amp; Theater</a></li>
							<li><a href="products.html">Computer</a></li> 
							<li><a href="products.html">Laptop </a></li>
							<li><a href="products.html">Gaming PC</a></li>
							<li><a href="products.html">Monitors</a></li>
							<li><a href="products.html">Networking</a></li>
							<li><a href="products.html">Printers &amp; Supplies</a></li>
							<li><a href="products.html">Accessories</a></li> 
						</ul>	 
					</div>	
					<div class="col-md-3 sitemap-text-grids">	
						<h5 class="sitemap-text-title"><a href="products.html">HOME APPLIANCES</a></h5> 
						<ul>   
							<li><a href="products.html">Rice Cookers</a></li>
							<li><a href="products.html">Mixer Juicer</a></li>
							<li><a href="products.html">Grinder</a></li>
							<li><a href="products.html">Blenders &amp; Choppers</a></li>
							<li><a href="products.html">Microwave Oven</a></li>
							<li><a href="products.html">Food Processors</a></li> 
							<li><a href="products.html">Purifiers</a></li>
							<li><a href="products.html">Geysers</a></li>
							<li><a href="products.html">Gas Stove</a></li>
							<li><a href="products.html">Vacuum Cleaner</a></li>
							<li><a href="products.html">Sewing Machine</a></li> 
							<li><a href="products.html">Heaters &amp; Fans</a></li>
						</ul> 
					</div>	
					<div class="clearfix"> </div>
				</div>
				<div id="w3sec2" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-slideshare"></i> Fashion Store</h3>  
					<div class="col-md-3 sitemap-text-grids">  
						<h5 class="sitemap-text-title"><a href="products1.html">GIRLS' CLOTHING</a></h5>   
						<ul>  
							<li><a href="products1.html">Ethnic wear </a></li>
							<li><a href="products1.html">Maternity wear</a></li>
							<li><a href="products1.html">inner & nightwear </a></li>
							<li><a href="products1.html">casual wear </a></li>
							<li><a href="products1.html">formal wear</a></li>
							<li><a href="products1.html">Sports wear</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products1.html">BOYS' CLOTHING</a></h5>  
						<ul>  
							<li><a href="products1.html">Jeans</a></li>
							<li><a href="products1.html">Ethnic wear </a></li>
							<li><a href="products1.html">Casual wear</a></li>
							<li><a href="products1.html">Night wear</a></li> 
							<li><a href="products1.html">T-Shirts</a></li> 
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products1.html">JACKETS</a></h5> 
						<ul> 
							<li><a href="products1.html">Blazers</a></li>
							<li><a href="products1.html">Bomber jackets</a></li>
							<li><a href="products1.html">Denim Jackets</a></li>
							<li><a href="products1.html">Duffle Coats</a></li>
							<li><a href="products1.html">Leather Jackets</a></li>
							<li><a href="products1.html">Parkas</a></li>
						</ul> 
						<h5 class="sitemap-text-title"><a href="products1.html">ACCESSORIES</a></h5> 
						<ul> 
							<li><a href="products1.html">Watches </a></li>
							<li><a href="products1.html">Eyewear </a></li>
							<li><a href="products1.html">Jewellery </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products1.html">Footwear </a></h5> 
						<ul> 		 
							<li><a href="products1.html">Ethnic</a></li>  
							<li><a href="products1.html">Casual wear</a></li>
							<li><a href="products1.html">Sports Shoes</a></li>
							<li><a href="products1.html">Boots</a></li>
							<li><a href="products1.html">Running</a></li> 
							<li><a href="products1.html">Personal Grooming</a></li>
							<li><a href="products1.html">Handbags</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products1.html">BEAUTY</a></h5> 
						<ul>  
							<li><a href="products1.html">Perfumes & Deos</a></li>
							<li><a href="products1.html">Lipsticks & Nail Polish</a></li>
							<li><a href="products1.html">Beauty Gift Hampers</a></li> 
							<li><a href="products1.html">Personal Grooming</a></li>
							<li><a href="products1.html">Travel bags</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products1.html">PERSONAL CARE</a></h5>  
						<ul> 
							<li><a href="products1.html">Face Care</a></li>
							<li><a href="products1.html">Skin Care</a></li>
							<li><a href="products1.html">Hair Care</a></li> 
							<li><a href="products1.html">Bath & Spa</a></li>   
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div id="w3sec3" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-child"></i> Kids Fashion & Toys</h3>
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products2.html">KIDS CLOTHING</a></h5> 
						<ul>  
							<li><a href="products2.html">Ethnic wear </a></li> 
							<li><a href="products2.html">inner & Sleepwear </a></li>
							<li><a href="products2.html">Dresses & Frocks </a></li>
							<li><a href="products2.html">Winter wear</a></li>
							<li><a href="products2.html">Diaper & Accessories</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products2.html">KIDS FASHION</a></h5> 
						<ul>  
							<li><a href="products2.html">Footwear</a></li> 
							<li><a href="products2.html">Sunglasses </a></li>
							<li><a href="products2.html">School & Stationery</a></li>
							<li><a href="products2.html">Jewellery</a></li>
							<li><a href="products2.html">Hair bands & Clips</a></li>
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products2.html">Baby Care</a></h5>
						<ul>   
							<li><a href="products2.html">Lotions, Oil & Powder </a></li> 
							<li><a href="products2.html">Soaps, Shampoo </a></li>
							<li><a href="products2.html">Bath Towels</a></li> 
							<li><a href="products2.html">Toddlers' Rooms</a></li>
						</ul> 
						<h5 class="sitemap-text-title"><a href="products2.html">Baby Feeding</a></h5>
						<ul>  
							<li><a href="products2.html">Baby Food </a></li>
							<li><a href="products2.html">Bottle Feeding </a></li>
							<li><a href="products2.html">Breast Feeding</a></li>   
						</ul> 
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products2.html">TOYS</a></h5>  
						<ul> 
							<li><a href="products2.html">Art & Crafts</a></li> 
							<li><a href="products2.html">Educational Toys </a></li>
							<li><a href="products2.html">Baby Toys</a></li> 
							<li><a href="products2.html">Outdoor Play </a></li>
							<li><a href="products2.html">Soft Toys </a></li>
							<li><a href="products2.html">Water Toys</a></li> 
						</ul> 
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products2.html">KID'S GAMES</a></h5>
						<ul>
							<li><a href="products2.html">Toy Tips & Trends</a></li> 
							<li><a href="products2.html">Preschool Toys</a></li>
							<li><a href="products2.html">Musical Instruments</a></li> 
							<li><a href="products2.html">Bikes & Ride-Ons</a></li>
							<li><a href="products2.html">Video Games</a></li>
							<li><a href="products2.html">PC & Digital Gaming</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div> 	
				</div>
				<div id="w3sec4" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-home"></i> Home & Furniture</h3> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products3.html">Kitchen Uses</a></h5> 
						<ul>  
							<li><a href="products3.html">Dinner Sets </a></li> 
							<li><a href="products3.html">Cookware & Bakeware </a></li>
							<li><a href="products3.html">Containers & Jars </a></li>
							<li><a href="products3.html">Kitchen Tools </a></li>
							<li><a href="products3.html">Food Storage</a></li>
							<li><a href="products3.html">Casseroles</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products3.html">Garage Storage</a></h5>  
						<ul>  
							<li><a href="products3.html">Baskets & Bins </a></li>  
							<li><a href="products3.html">Free Standing Shelves </a></li>
							<li><a href="products3.html">Floor cleaning</a></li>
							<li><a href="products3.html">Tool Kits</a></li>
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products3.html">Furniture</a></h5> 
						<ul>  
							<li><a href="products3.html">Bedroom </a></li> 
							<li><a href="products3.html">Dining Room </a></li>
							<li><a href="products3.html">Kids' Furniture </a></li>
							<li><a href="products3.html">Living Room</a></li>
							<li><a href="products3.html">Office</a></li>
							<li><a href="products3.html">Mattresses</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products3.html">Home Decor </a></h5> 
						<ul>  
							<li><a href="products3.html">Lighting</a></li> 
							<li><a href="products3.html">Painting</a></li>
							<li><a href="products3.html">Curtains & Blinds</a></li>
							<li><a href="products3.html">Patio Furniture</a></li>
							<li><a href="products3.html">Wardrobes & Cabinets</a></li>
							<li><a href="products3.html">Mattresses</a></li>
						</ul> 
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products3.html">Gardening & Lawn </a></h5> 
						<ul>    
							<li><a href="products3.html">Gardening </a></li> 
							<li><a href="products3.html">Landscaping </a></li>
							<li><a href="products3.html">Sheds</a></li>
							<li><a href="products3.html">Outdoor Storage  </a></li>
							<li><a href="products3.html">Garden & Ideas </a></li>
							<li><a href="products3.html">Patio Tips</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div> 
				</div>
				<div id="w3sec5" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-shopping-basket"></i> Sports & Fitness</h3>
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products4.html">Single Sports </a></h5> 
						<ul>  
							<li><a href="products4.html">Bikes </a></li> 
							<li><a href="products4.html">Fishing  </a></li>
							<li><a href="products4.html">Cycling </a></li>
							<li><a href="products4.html">Musical Instruments</a></li>
							<li><a href="products4.html">Archery </a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products4.html">Other</a></h5>  
						<ul> 
							<li><a href="products4.html">Riding Gears & More </a></li> 
							<li><a href="products4.html">Body Massagers </a></li>
							<li><a href="products4.html">Health Monitors </a></li>
							<li><a href="products4.html">Health Drinks </a></li> 
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products4.html">Team Sports</a></h5> 
						<ul>  
							<li><a href="products4.html">Cricket </a></li> 
							<li><a href="products4.html">Badminton </a></li>
							<li><a href="products4.html">Swimming Gear </a></li>
							<li><a href="products4.html">Sports Apparel </a></li>
							<li><a href="products4.html">Indoor games</a></li>
						</ul> 
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products4.html">Fitness </a></h5> 
						<ul> 
							<li><a href="products4.html">Fitness Accessories </a></li> 
							<li><a href="products4.html">Exercise Machines </a></li>
							<li><a href="products4.html">Ellipticals </a></li>
							<li><a href="products4.html">Home Gyms</a></li> 
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products4.html">Camping </a></h5> 
						<ul> 
							<li><a href="products4.html">Air Beds</a></li> 
							<li><a href="products4.html">Tents </a></li>
							<li><a href="products4.html">Gazebo's & Shelters</a></li>
							<li><a href="products4.html">Coolers </a></li>
							<li><a href="products4.html">Canopies</a></li>
							<li><a href="products4.html">Sleeping Bags</a></li> 
							<li><a href="products4.html">Shooting </a></li> 
							<li><a href="products4.html">Knives & Tools </a></li>
							<li><a href="products4.html">Optics & Binoculars </a></li>
							<li><a href="products4.html">Lights & Lanterns </a></li>
							<li><a href="products4.html">Hunting Clothing </a></li> 
						</ul>
					</div>
					<div class="clearfix"> </div>  
				</div>
				<div id="w3sec6" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-shopping-basket"></i> Grocery Store</h3>
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products5.html">Veggies & Fruits </a></h5> 
						<ul>  
							<li><a href="products5.html">Vegetables </a></li> 
							<li><a href="products5.html">Fruits </a></li>
							<li><a href="products5.html">Dry Fruits</a></li> 
							<li><a href="products5.html">Snacks & Cookies </a></li>
							<li><a href="products5.html">Breakfast & Cereal</a></li> 
						</ul>
						<h5 class="sitemap-text-title"><a href="products5.html">Food Shops </a></h5> 
						<ul>  	
							<li><a href="products5.html">Fresh Food</a></li> 
							<li><a href="products5.html">Food Gifts </a></li>
							<li><a href="products5.html">Frozen Food </a></li>
							<li><a href="products5.html">Organic </a></li>
							<li><a href="products5.html">Gluten Free </a></li> 
						</ul>  	
					</div>	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products5.html">Packet Food</a></h5> 
						<ul> 
							<li><a href="products5.html">Beverages </a></li> 
							<li><a href="products5.html">Baking </a></li>
							<li><a href="products5.html">Emergency Food </a></li>
							<li><a href="products5.html">Candy & Gum </a></li>
							<li><a href="products5.html">Meals & Pasta </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products5.html">Shop All Pets </a></h5> 
						<ul class="is-hidden">  
							<li><a href="products5.html">Dogs </a></li>  
							<li><a href="products5.html">Fish </a></li>												
							<li><a href="products5.html">Cats</a></li>
							<li><a href="products5.html">Birds </a></li>
							<li><a href="products5.html">Pet Food </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products5.html">Household Essentials </a></h5> 
						<ul>  
							<li><a href="products5.html">Laundry Room </a></li> 
							<li><a href="products5.html">Paper & Plastic</a></li>
							<li><a href="products5.html">Pest Control </a></li>
							<li><a href="products5.html">Batteries </a></li> 
						</ul>
						<h5 class="sitemap-text-title"><a href="products5.html">Tips </a></h5>  
						<ul>  
							<li><a href="products5.html">Pets Growth</a></li> 
							<li><a href="products5.html">Recipes </a></li>
							<li><a href="products5.html">Snacks</a></li>
							<li><a href="products5.html">Nutrition</a></li> 
						</ul>
					</div>
					<div class="clearfix"> </div>  
				</div>
				<div id="w3sec7" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-gift"></i> Photo, Gifts &amp; Office</h3>
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products6.html">Trending Now</a></h5> 
						<ul>  
							<li><a href="products6.html">Best Priced</a></li> 
							<li><a href="products6.html">Chocolates </a></li>
							<li><a href="products6.html">Gift Cards </a></li>
							<li><a href="products6.html">Fashion & Accessories </a></li>
							<li><a href="products6.html">Decorative Plants </a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products6.html">Office</a></h5> 
						<ul>  
							<li><a href="products6.html">Calendars</a></li> 
							<li><a href="products6.html">Mousepads</a></li>
							<li><a href="products6.html">Phone Cases</a></li>
							<li><a href="products6.html">Tablet & Laptop Cases</a></li>
							<li><a href="products6.html">Mounted Photos</a></li>
						</ul>
					</div>
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products6.html">Photos </a></h5> 
						<ul>  
							<li><a href="products6.html">Shelf animation </a></li> 
							<li><a href="products6.html">3D-rendered </a></li>
							<li><a href="products6.html">gift builder </a></li>
							<li><a href="products6.html">Frames</a></li>
							<li><a href="products6.html">Wall Decor</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products6.html">Combos</a></h5> 
						<ul>   
							<li><a href="products6.html">Chocolates </a></li> 
							<li><a href="products6.html">Dry Fruits</a></li>
							<li><a href="products6.html">Sweets</a></li>
							<li><a href="products6.html">Snacks</a></li>
							<li><a href="products6.html">Cakes</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products6.html">Gifts</a></h5>
						<ul> 
							<li><a href="products6.html">Personalized Gifts </a></li> 
							<li><a href="products6.html">Flowers </a></li>
							<li><a href="products6.html">Cards & Toys</a></li>
							<li><a href="products6.html">Show pieces </a></li>
							<li><a href="products6.html">Photo Books</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products6.html">Favourite Brands </a></h5> 
						<ul>  
							<li><a href="products6.html">Archies </a></li> 
							<li><a href="products6.html">Jewel Fuel </a></li>
							<li><a href="products6.html">Ferns N Petals </a></li>
							<li><a href="products6.html">Happily Unmarried</a></li>
							<li><a href="products6.html">Chumbak</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div> 
				</div>
				<div id="w3sec8" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-medkit"></i> Health & Beauty</h3>  
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products7.html">Health</a></h5> 
						<ul>  
							<li><a href="products7.html">Home Health Care </a></li> 
							<li><a href="products7.html">Sports Nutrition </a></li>
							<li><a href="products7.html">Vision </a></li> 
							<li><a href="products7.html">Diet & Nutrition </a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products7.html">Pharmacy Center </a></h5> 
						<ul>  
							<li><a href="products7.html">Diabetes Shop </a></li> 
							<li><a href="products7.html">Medicine Cabinet </a></li>
							<li><a href="products7.html">Vitamin Selector</a></li>
							<li><a href="products7.html">Pharmacy Help</a></li> 
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products7.html">Health Tips</a></h5>
						<ul>   
							<li><a href="products7.html">Diet</a></li> 
							<li><a href="products7.html">Exercise Tips  </a></li>
							<li><a href="products7.html">Vitamin Balance</a></li>
							<li><a href="products7.html">Health Insurance</a></li>
							<li><a href="products7.html">Funeral</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products7.html">Beauty </a></h5> 
						<ul> 
							<li><a href="products7.html">Massage & Spa </a></li> 
							<li><a href="products7.html">Skin Care </a></li>
							<li><a href="products7.html">Fragrances </a></li>
							<li><a href="products7.html">Makeup </a></li>
							<li><a href="products7.html">Beauty Tips</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products7.html">Pharmacy </a></h5> 
						<ul> 
							<li><a href="products7.html">Home Delivery </a></li> 
							<li><a href="products7.html">History & Reports </a></li>
							<li><a href="products7.html">Transfer Prescriptions </a></li>
							<li><a href="products7.html">Health CheckUp</a></li>
							<li><a href="products7.html">Mobile App</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div id="w3sec9" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-car"></i> Automotive</h3>   
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products8.html">All Motors</a></h5> 
						<ul>   
							<li><a href="products8.html">Bikes </a></li> 
							<li><a href="products8.html">Yachts </a></li>
							<li><a href="products8.html">Scooters </a></li>
							<li><a href="products8.html">Autos</a></li>
							<li><a href="products8.html">Bus</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products8.html">Exterior Accessories </a></h5>  
						<ul> 
							<li><a href="products8.html">Wheel covers </a></li> 
							<li><a href="products8.html">Car Lighting </a></li>
							<li><a href="products8.html">Polish & Waxes</a></li>
							<li><a href="products8.html">Cargo Management</a></li>
							<li><a href="products8.html">Car Decoration </a></li>
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products8.html">Accessories </a></h5> 
						<ul>   
							<li><a href="products8.html">Vehicle Electronics</a></li> 
							<li><a href="products8.html">Stereos & Monitors</a></li>
							<li><a href="products8.html">Bluetooth Devices</a></li>
							<li><a href="products8.html">GPS Navigation</a></li>
							<li><a href="products8.html">Speakers & Tweeters</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products8.html">Car Care</a></h5>  
						<ul>  
							<li><a href="products8.html">Auto Tips & Advice </a></li> 
							<li><a href="products8.html">Car Washes & Cleaners </a></li>
							<li><a href="products8.html">Car Wax & Polish</a></li>
							<li><a href="products8.html">Cleaning Tools</a></li>
							<li><a href="products8.html">Detailing Kits </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products8.html">Safety & Security</a></h5> 
						<ul>  
							<li><a href="products8.html">Anti-Theft Devices </a></li> 
							<li><a href="products8.html">Helmets</a></li>
							<li><a href="products8.html">Sensors</a></li>
							<li><a href="products8.html">Auto Repair Tools </a></li>
							<li><a href="products8.html">Antifreeze & Coolants </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products8.html">Car Interiors</a></h5> 
						<ul>   
							<li><a href="products8.html">Stereos </a></li> 
							<li><a href="products8.html">Floor Mats </a></li>
							<li><a href="products8.html">Seat Covers</a></li>
							<li><a href="products8.html">Chargers </a></li>
							<li><a href="products8.html">Audio Finder </a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div id="w3sec10" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-book"></i> Books, Music & Movies</h3>  
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products9.html">Books</a></h5> 
						<ul>    
							<li><a href="products9.html">Academic Text </a></li>
							<li><a href="products9.html">Romance Books </a></li>
							<li><a href="products9.html">Journals </a></li>
							<li><a href="products9.html">Children's & Teen Books </a></li> 
						</ul>
						<h5 class="sitemap-text-title"><a href="products9.html">Exam books </a></h5>
						<ul> 
							<li><a href="products9.html">CAT/MAT/XAT</a></li>
							<li><a href="products9.html">Civil Services</a></li>
							<li><a href="products9.html">AFCAT</a></li>
							<li><a href="products9.html">New Releases</a></li>
						</ul> 
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products9.html">Music</a></h5> 
						<ul> 
							<li><a href="products9.html">New Releases </a></li> 
							<li><a href="products9.html">Country Music </a></li>
							<li><a href="products9.html">Musical Instruments </a></li>
							<li><a href="products9.html">Collections</a></li>
							<li><a href="products9.html">Boxed Sets </a></li> 
							<li><a href="products9.html">Pop </a></li>  
							<li><a href="products9.html">Album Songs</a></li> 
							<li><a href="products9.html">Music DVDs </a></li> 
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products9.html">Movies</a></h5> 
						<ul>  
							<li><a href="products9.html">New Releases </a></li> 
							<li><a href="products9.html">Children & Family </a></li>
							<li><a href="products9.html">Action</a></li>
							<li><a href="products9.html">Classic Movies </a></li>
							<li><a href="products9.html">Bollywood Movies </a></li>
							<li><a href="products9.html">Hollywood Movies </a></li>   
							<li><a href="products9.html">Animated</a></li>
							<li><a href="products9.html">Adventure</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products9.html">TV Shows</a></h5>  
						<ul>   
							<li><a href="products9.html">Serials</a></li> 
							<li><a href="products9.html">Best Programs</a></li>
							<li><a href="products9.html">Celebrations</a></li>
							<li><a href="products9.html">Top Shows</a></li> 
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>  
			</div>
			<script>
			$(document).ready(function(){
			  // Add scrollspy to <body>
			  $('body').scrollspy({target: ".sitemap-tabs", offset: 50});

			  // Add smooth scrolling on all links inside the navbar
			  $("#myNavbar a").on('click', function(event) {
				// Make sure this.hash has a value before overriding default behaviour
				if (this.hash !== "") {
				  // Prevent default anchor click behaviour
				  event.preventDefault();

				  // Store hash
				  var hash = this.hash;

				  // Using jQuery's animate() method to add smooth page scroll
				  // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
				  $('html, body').animate({
					scrollTop: $(hash).offset().top
				  }, 800, function(){
			   
					// Add hash (#) to URL when done scrolling (default click behaviour)
					window.location.hash = hash;
				  });
				}  // End if
			  });
			});
			</script> 
			<div class="sitemap-row2  sitemap-text"> 
				<h3 class="w3sitemap-title"><i class="fa fa-gears"></i>Smart Bazaar Services</h3>  
				<div class="col-md-4 sitemap-text-grids">
					<ul>  
						<li><a href="marketplace.html">Marketplace</a></li> 
						<li><a href="values.html">Core Values</a></li>
						<li><a href="privacy.html">Privacy Policy</a></li>  
					</ul>
				</div>
				<div class="col-md-4 sitemap-text-grids">
					<ul>  
						<li><a href="about.html">About Us</a></li> 
						<li><a href="contact.html">Contact Us</a></li>  
						<li><a href="login.html">Login</a></li>  
					</ul>
				</div>
				<div class="col-md-4 sitemap-text-grids">
					<ul>  
						<li><a href="signup.html">Sign Up</a></li>  
						<li><a href="login.html">Order Status</a></li> 
						<li><a href="faq.html">FAQ</a></li>  
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //site map --> 
	<!-- footer-top -->
	<!-- //subscribe --> 
	<!-- footer -->
	<c:import url="footer.jsp" charEncoding="utf-8" />
	<!-- //footer -->		
	
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) {
        			items[i].set('shipping', 0);
        			items[i].set('shipping2', 0);
        		}
        	}
        });
    </script>  
	<!-- //cart-js -->  
	<!-- menu js aim -->
	<script src="js/jquery.menu-aim.js"> </script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
	<!-- //menu js aim --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>