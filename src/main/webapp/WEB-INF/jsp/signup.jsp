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
<style type="text/css">
	.span{
			color:red;
			position: absolute;
		
		}
</style>
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
		function ckname(obj){//判断用户名是否重复和其他约束
	        	var name=obj.value;	//获取name框的值
	        	var tip1="";
	        	if(name==tip1){	//判断用户名是否为空
	        		tip1="用户名不能为空!";
	        		$("#tip").html(tip1);//提示信息传入
	        	}else{
	        		$.ajax({	//判断用户名是否重复
	   					 url:"${pageContext.request.contextPath}/ckname",//"/shop/ckname"处理
	   					 type:"POST",
	   					 contentType:'application/json',
	   					 data:name,
	   					 processData:false,
	   					 dataType:"JSON",
	   					 success:function(data){
	   						if(data!=""){
	   							tip1="用户名已存在!";
	   							$("#tip").html(tip1);//提示信息传入
	   						}
	   						else{
	   							tip1="用户名可用o_O";
	   							$("#tip").html(tip1);//提示信息传入
	   						}
	   					 }	   					 
	        		})	        			        	
	        	}	
	        }
		function ckemail(obj){// 判断email是否符合条件
			var email=obj.value;
			var reg=/^[\w_\.\-]+@[\w]+.([\w]{2,4})$/g ;
			var flag=reg.test(email);
			var tip="";
			if(flag==false){
				tip="Email 格式错误!";
				$("#tip").html(tip);//提示信息传入
			}else{
				tip="";
				$("#tip").html(tip);//提示信息传入
			}
			
		}
		function ckpwd(obj){// 判断密码是否符合条件
			var pwd=obj.value;
			var reg=/^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)\S{8,}$/ ;
			//密码必须符合由数字,大写字母,小写字母,至少其中两种组成，且长度不小于8，同时第一位不能为数字
			var flag=reg.test(pwd);
			var tip="";
			if(flag==false){
				tip="OvO,密码 格式错误!";
				$("#tip").html(tip);//提示信息传入
			}else{
				tip="";
				$("#tip").html(tip);//提示信息传入
			}
			
		}
	</script>
	<!-- //smooth-scrolling-of-move-up -->
</head>
<body>
	<!-- header -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:import url="head.jsp" charEncoding="utf-8" />
	<!-- //header --> 	
	<!-- sign up-page -->
	<div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">账号注册</h3>  
			<div class="login-body">
				<form action="/dosign" method="post"><!-- 注册 -->
					<input type="text" class="user" name="name" placeholder="昵称（例：jack）" required="" onblur="ckname(this)">
					<input type="text" class="user" name="email" placeholder="电子邮箱" required="" onblur="ckemail(this)">
					<input type="password" name="password" class="lock" placeholder="密码" required="" onblur="ckpwd(this)">
					<p style="margin: 0px 50px 20px -15px;"><!-- P标签margin属性 -->
					<span id="tip" class="span" style="float: left "></span><!-- 提示信息 -->
					</p>
					<input type="submit" value="Sign Up " name="btn">
					<div class="forgot-grid">
					<!-- <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>记住我</label>
						<div class="forgot">
							<a href="#">忘记密码?</a>
						</div> -->	
						<div class="clearfix"> </div>
					</div>
				</form>
			</div>  
			<h6>已有账号,<a href="login">直接登录 »</a> </h6>  
		</div>
	</div>
	<!-- //sign up-page --> 
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