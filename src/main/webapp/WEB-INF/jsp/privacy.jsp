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
	<!-- privacy-page -->
	<div class="privacy">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Privacy Policy</h3>  
			<div class="privacy-w3row">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ornare turpis ut porta aliquet. Morbi quis dictum lacus. Donec scelerisque lacus nec lobortis tempor. Morbi orci arcu, ullamcorper ut arcu vel, ultricies congue lacus. Phasellus porta cursus tempor. Nunc ultricies sapien nec est ornare pulvinar. Vivamus mollis faucibus purus sed blandit. Praesent fermentum dapibus risus id rutrum. Aliquam rutrum vel nulla eu fringilla.</p>
				<p>Nunc ornare turpis ut porta aliquet. Morbi quis dictum lacus. Donec scelerisque lacus nec lobortis tempor. Morbi orci arcu, ullamcorper ut arcu vel, ultricies congue lacus. Phasellus porta cursus tempor. Nunc ultricies sapien nec est ornare pulvinar. Vivamus mollis faucibus purus sed blandit. Praesent fermentum dapibus risus id rutrum. Aliquam rutrum vel nulla eu fringilla. Curabitur efficitur justo a est tempor, pretium accumsan leo sagittis. Ut imperdiet sapien velit, a auctor neque laoreet sed. Praesent ornare nulla sit amet ullamcorper vulputate. Suspendisse vitae magna finibus, egestas eros quis, ornare risus. Duis magna ex, ultrices quis tellus non, commodo eleifend odio. Donec et faucibus risus. Aliquam laoreet justo sapien. </p>
				<p>Donec scelerisque lacus nec lobortis tempor donec et faucibus risus. Aliquam laoreet justo sapien. </p>
				<p>Pellentesque quis sagittis est. Nam placerat ante at nunc ornare, sed faucibus odio interdum. Nam viverra, purus ac ullamcorper convallis, lorem erat consequat enim, at pharetra magna ipsum at velit. </p>
				<h5>What Does Our Privacy Policy Include?</h5>  
				<p>Maecenas malesuada leo dui, at venenatis ligula sodales ut. Cras a feugiat orci. </p>
				<p>Pellentesque metus enim, aliquet eu felis sed, pretium ultrices ante convallis nec turpis.</p>
				<p>Phasellus imperdiet nibh et lorem tincidunt aliquam. Integer elementum purus non venenatis volutpat. Curabitur sit amet neque sed arcu pretium iaculis. Phasellus posuere egestas tortor a molestie. Nulla sed urna dignissim, maximus magna et, elementum metus. Ut dolor lorem, mattis eu consectetur non, euismod quis nulla. </p>			
				<h5>How Do We Use Your Personal Information?</h5>  
				<p>Phasellus imperdiet nibh et lorem tincidunt aliquam. Integer elementum purus non venenatis volutpat. Curabitur sit amet neque sed arcu pretium iaculis. Phasellus posuere egestas tortor a molestie. Nulla sed urna dignissim, maximus magna et, elementum metus. Ut dolor lorem, mattis eu consectetur non, euismod quis nulla. </p>
			</div>
		</div>
	</div>
	<!-- //privacy-page --> 

	<!-- footer -->
	<c:import url="footer.jsp" charEncoding="utf-8" />
	<!-- //footer -->		
	
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