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
<script src="js/jquery-scrolltofixed-min.js" type="text/javascript"></script><!-- fixed nav js -->
<script>
    $(document).ready(function() {

        // Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

        $('.header-two').scrollToFixed();  
        // previous summary up the page.

        var summaries = $('.summary');
        summaries.each(function(i) {
            var summary = $(summaries[i]);
            var next = summaries[i + 1];

            summary.scrollToFixed({
                marginTop: $('.header-two').outerHeight(true) + 10, 
                zIndex: 999
            });
        });
    });
</script>
<!-- //js --> 
<!-- web-fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Offside' rel='stylesheet' type='text/css'> 
<link href='https://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
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
	<!-- offers-page -->
	<div class="wthree-offers">
		<div class="container">
			<h3 class="w3ls-title w3ls-title1">今日优惠礼品卡 </h3>
			<div class="w3ls-add-grids w3agile-add-products">
				<a href="#"> 
					<h4>TOP 10 TRENDS FOR YOU FLAT <span>20%</span> OFF</h4>
					<h6>Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
				</a>
			</div> 
			<div class="offer-card-row">
				<div class="col-md-4 offer-card-grids">
					<h4>20%现金返还</h4>
					<p>商店使用礼品卡获得20%现金</p>
					<a href="products.html">现在购买 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>
				</div>
				<div class="col-md-4 offer-card-grids">
					<h4>赚20元</h4>
					<p>推荐一个朋友，在智能集市上赚20元！</p>
					<a href="products.html">现在购买<i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>
				</div>
				<div class="col-md-4 offer-card-grids">
					<h4>10%现金回扣 </h4>
					<p>使用信用卡购物获得10%现金回扣 </p>
					<a href="products.html">现在购买 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>
				</div>	
				<div class="clearfix"> </div>
			</div>	
			<div class="offer-bottom"> 
				<div class="col-md-6 offer-bottom-grids">
					<div class="offer-bottom-grids-info2">
						<h4>特殊礼品卡</h4> 
						<h6>更多的品牌，更多的购物方式。<br> 看看这些理想的礼物！</h6>
					</div>
				</div>
				<div class="col-md-6 offer-bottom-grids">
					<div class="offer-bottom-grids-info">
						<h4>平价10折扣</h4> 
						<h6>最佳购物清单 <br> 时装店</h6>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //login-page --> 
	<!-- footer-top -->
	<c:import url="footer.jsp" charEncoding="utf-8" />
	<!-- //footer-top -->  
	<!-- subscribe -->
	
	<!-- //subscribe --> 
	<!-- footer -->
	
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