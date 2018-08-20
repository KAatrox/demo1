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
<style type="text/css">
	.span{
			color:red;
			position: absolute;
		
		}
</style>
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
		
		
 		function ckemail(obj){//判断用户电子邮箱
			var email=obj.value;
			var tipe="";
			if(email==tipe){
				tipe="亲，邮箱不能为空"
				$("#tip").html(tipe);//提示信息传入
			}else{
				tipe="";
				$("#tip").html(tipe);//提示信息传入
				$.ajax({	//判断电子邮箱是否存在
					 url:"${pageContext.request.contextPath}/ckemail",//"/shop/ckemail"处理
					 type:"POST",
					 contentType:'application/json',
					 data:email,
					 processData:false,
					 dataType:"JSON",
					 success:function(data){
						if(data!=""){
						}
						else{
							tipe="该邮箱未注册用户o_O";
						
							$("#tip").html(tipe);//提示信息传入
						}					
					 }					 
   					})
   				}
		} 
		
		
		function cklpwd(obj){// 判断密码是否符合条件
			var pwd=obj.value;
			var tip="";
			if(pwd==tip){
				tip="密码不能为空!";
				$("#tip").html(tip);//提示信息传入
			}else{
				tip="";
				$("#tip").html(tip);//提示信息传入
			}
			
		}
		
		function ckrpwd(obj){// 判断重复密码是否符合条件
			var pwd1= document.getElementById("p1").value;
		//	alert(pwd1);
			var pwd=obj.value;
			var tip="";
			if(pwd==tip){
				tip="确认密码不能为空!";
				$("#tip").html(tip);//提示信息传入
			}else{
				
				if(pwd1==pwd){
					tip="";
				}
				else{
					tip="两次输入密码不一致！";
				}
				$("#tip").html(tip);//提示信息传入
			}
			
		}
		
/* 		function chpwd(){//更改密码
			var Email= document.getElementById("email").value;
			var UserPwd= document.getElementById("p1").value;
			var UserPwd2= document.getElementById("p2").value;
			alert(Email);
			alert(UserPwd);
			alert(UserPwd2);
			var user={
				 "Email":Email,
				 "UserPwd":UserPwd,
				 
			};
		//	data={"email":email,"pwd1":pwd1};
			if(UserPwd==UserPwd2){
				$.ajax({	
					 url:"${pageContext.request.contextPath}/shop/chpwd",		//"/shop/ckname"处理
					 type:"POST",
					 contentType:'application/json',
					 data:JSON.stringify(user),
					 processData:false,
					 dataType:"JSON",
					 success:function(data){						
						alert("密码修改成功！");										
					 },
					 error:function(data){
						 alert("密码修改失败！");
					 }
  					})
			}else{
				
			}
		}
		 */
		<%
        HttpSession s = request.getSession();     
  		%>
  		function errorna(){
  			var tip=s.getAttribute("tip")
  			console.log("!");
  			console.log(tip);
  			$("#tip").html(tip);//提示信息传入
  		}
	</script>
	<!-- //smooth-scrolling-of-move-up -->
</head>
<body>
		<!-- header -->
		<body>
		
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:import url="head.jsp" charEncoding="utf-8" />
    
	<!-- //header -->	 	
	<!-- login-page -->
	<div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">密码找回</h3>  
			<div class="login-body">
				<form action="/chpwd" method="post">
					<input type="text" class="user" name="email" placeholder="电子邮箱" required=""  onblur="ckemail(this)" id="email">
					<input type="password" name="password" class="lock" placeholder="新密码" required="" onblur="cklpwd(this)" id="p1">
					<input type="password" name="password1" class="lock" placeholder="确认密码" required="" onblur="ckrpwd(this)" id="p2">
					
					<p style="margin: 0px 50px 20px -75px;"><!-- P标签margin属性 -->
					<span id="tip" class="span" style="float: left " ><%=s.getAttribute("tipch") %></span><!-- 提示信息 -->
					</p>
					<input type="submit" value="确认" onclick="">
					<div class="forgot-grid">
					<!--  <label class="checkbox"><input type="checkbox" name="remember"><i></i>记住我</label>-->	
						<div class="forgot">
							<!--  <a href="#">忘记密码?</a>-->
						</div>
						<div class="clearfix"> </div>
					</div>
				</form>
			</div>  
		<!--  <h6> 首次使用? <a href="signup">点我去注册 »</a> </h6> 
			<div class="login-page-bottom social-icons">
				<h5>使用其他账号登录</h5>
				<ul>
					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"> </a></li> 
				</ul> 
			</div>-->	
		</div>
	</div>
	<!-- //login-page --> 
	<!-- footer-top -->
	<!-- //footer-top --> 
	<!-- subscribe -->
	
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