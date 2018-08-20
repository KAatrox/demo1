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
	<!-- help-page -->
	<div class="help">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">有什么需要帮助吗？</h3>  
			<div class="header-search">
				<form action="/helpinfo" method="post">
					<input type="search" name="Search" placeholder="请键入您查询的问题，如退货、退款或其他。" required="">
					<i class="fa fa-search" aria-hidden="true"> </i>
					<button type="submit" class="btn btn-default" aria-label="Left Align">
						查询
					</button>
				</form>
			</div> 
			<div class="faq-w3agile"> 
				<h5>常见的十大问题(FAQ)</h5>
				<ul class="faq">
					<li class="item1"><a href="#" title="click here">交易条款</a>
						<ul>
							<li class="subitem1"><p>  订购的商品价格以您下订单时网上价格为准。</p></li>										
						</ul>
					</li>
					<li class="item2"><a href="#" title="click here">如何填写收货地址 ?</a>
						<ul>
							<li class="subitem1"><p> 点击【账户设置】-【收货地址】进入地址填写页面，然后点击【新增收货地址】即可输入您的收货地址。.</p></li>										
						</ul>
					</li>
					<li class="item3"><a href="#" title="click here">为什么参加了活动没有得到优惠？?</a>
						<ul>
							<li class="subitem1"><p>由于活动优惠方式或促销种类非常多，具体规则都不相同，您所购买的商品实际能享受优惠请以结算页面为准。.</p></li>										
						</ul>
					</li>
					<li class="item4"><a href="#" title="click here">企业用户与个人用户有什么区别？?</a>
						<ul>
							<li class="subitem1"><p>企业用户相对个人用户有优势.</p></li>										
						</ul>
					</li> 
					<li class="item5"><a href="#" title="click here">我所在的地区支持货到付款吗？?</a>
						<ul>
							<li class="subitem1"><p>查询您所在地区是否支持货到付款请点击//help.jd.com/user/issue/103-983.html</p></li>										
						</ul>
					</li>
					<li class="item6"><a href="#" title="click here">货到付款订单可以用哪些支付方式？?</a>
						<ul>
							<li class="subitem1"><p>选择货到付款，在订单送达时您可选择现金、POS机刷卡、支票方式支付货款或通过京东APP手机客户端 【扫啊扫】功能扫描包裹单上的订单条形码方式用手机来完成订单的支付（扫码支付）。</p></li>										
						</ul>
					</li>
					<li class="item7"><a href="#" title="click here">付款以后可以当场验收商品吗？</a>
						<ul>
							<li class="subitem1"><p>您付款签收后，可以当场验收商品，如商品本身有问题请您在“我的京东”中提交退换货申请，将有专业售后人员为您解决。.</p></li>										
						</ul>
					</li>
					<li class="item8"><a href="#" title="click here">如何购买下单？?</a>
						<ul>
							<li class="subitem1"><p> 浏览您要购买的商品，点击“加入购物车”，商品会自动添加到购物车里；.</p></li>										
						</ul>
					</li>
					<li class="item9"><a href="#" title="click here">如何查找想要的商品 ?</a>
						<ul>
							<li class="subitem1"><p>通过商品品类查询商品.</p></li>										
						</ul>
					</li>
					<li class="item10"><a href="#" title="click here">如何注册 ?</a>
						<ul>
							<li class="subitem1"><p>注册企业会员，请点击注册.</p></li>										
						</ul>
					</li> 
				</ul>
				<!-- script for tabs -->
				<script type="text/javascript">
					$(function() {
					
						var menu_ul = $('.faq > li > ul'),
							   menu_a  = $('.faq > li > a');
						
						menu_ul.hide();
					
						menu_a.click(function(e) {
							e.preventDefault();
							if(!$(this).hasClass('active')) {
								menu_a.removeClass('active');
								menu_ul.filter(':visible').slideUp('normal');
								$(this).addClass('active').next().stop(true,true).slideDown('normal');
							} else {
								$(this).removeClass('active');
								$(this).next().stop(true,true).slideUp('normal');
							}
						});
					
					});
				</script>
				<!-- script for tabs --> 
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