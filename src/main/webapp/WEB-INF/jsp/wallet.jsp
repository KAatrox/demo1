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
</script><style>
table.dataintable {
	margin-top:15px;
	border-collapse:collapse;
	border:1px solid #aaa;
	width:100%;
	}

table.dataintable th {
	vertical-align:middle;
	padding:5px 15px 5px 6px;
	background-color:#3F3F3F;
	border:1px solid #3F3F3F;
	text-align:right;
	color:#fff;
	}

table.dataintable td {
	vertical-align:text-top;
	padding:6px 15px 6px 6px;
	border:1px solid #aaa;
	}

table.dataintable tr:nth-child(odd) {
	background-color:#F5F5F5;
}

table.dataintable tr:nth-child(even) {
	background-color:#fff;
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
		<%
		HttpSession s = request.getSession(); 
		%>
		function wallet(){//钱包数据数据加载
			var name="<%=s.getAttribute("username")%>";
			$.ajax({	
					 url:"${pageContext.request.contextPath}/wallet",		//"/shop/ckname"处理
					 type:"POST",
					 contentType:'application/json',
					 //data:name
					 processData:false,
					 dataType:"JSON",
					 success:function(data){
						 //console.log(typeof data);
						// console.log(data);
						 $.each(data, function() {
							 var money=this.money;
							// console.log(money);
							 document.getElementById("tip").innerText = money;
							});	
					 }
					 
   		})
		}
		
		function money(){//钱包数据数据加载
			
			$(".dialog").show(2);
					 }
					 
   		
		 $(function(){//函数调用
				wallet();
		 }) 
		
	</script>
	<!-- //smooth-scrolling-of-move-up -->
</head>
<body>
	<!-- header -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:import url="head.jsp" charEncoding="utf-8" />
	<!-- //header --> 	
	<!-- help-page -->
	
	
	
	<div class="dialog">
        <h3>输入充值金额：</h3>
       <input  id="textkey" type="text"><br/><br/>
        <a href="" onclick="getkey()" class="btn btn-primary">确认充值</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="wallet" type="button" class="btn btn-primary">取消充值</a>        
        </p>        
        </div>
	<script type="text/javascript">
    function getkey() {				//充值操作
      //  var pms = 'Key=' + document.getElementById("textkey").value;
      	var price=document.getElementById("textkey").value;
        alert(price);
        if(price==""){
            alert("亲，充值金额不能为空o_O");          
        }else{
        //	alert("!!");
        	$.ajax({	
				 url:"${pageContext.request.contextPath}/addmoney",		//"/addmoney"处理
				 type:"POST",
				 contentType:'application/json',
				 data:price,
				 processData:false,
				 dataType:"JSON",
				 success:function(data){
					console.log(data);
					 alert("充值成功!");					
					 },
				 error:function(data){
					 console.log(data);
					 alert("充值成功!");
				 }
				})
        		
     		// a.href = '/addmoney?' + pms;}
         }
        }
        
     </script>
	
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
					$(".button5").click(function(){
						$(".dialog").show(200)
						})
				</script>
				<style>
				.dialog{    width: 500px;
    height: 200px;
    border: solid 1px #b5b0b0;
    border-radius: 5px;
    position: absolute;
    left: 30%;
    bottom: 30%;
    background: #eee;
    line-height: 40px;
    text-align: center;
    display: none;
    font-size:16px;
}
  				.test {
					font-size: 50px;
					color: #FF0000;
					font-style: italic;
						}
						
				.test1 {
					font-size: 100px;
					color: #ffcc00;
					font-style: italic;
						}
						
				.button {
    			background-color: #4CAF50; /* Green */
    			border: none;
    			color: white;
   			    padding: 16px 20px;
   			    text-align: center;
   				text-decoration: none;
    			display: inline-block;
    			font-size: 16px;
   				margin: 40px 600px;
   				-webkit-transition-duration: 0.4s; /* Safari */
   				transition-duration: 0.4s;
    			cursor: pointer;
    	
}
				.button5 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
    border-radius: 12px;
}

.button5:hover {
    background-color: #555555;
    color: white;
}
				</style>
				<!-- 字体 -->
				<!-- script for tabs --> 
			</div> 
		</div>
	</div>
	<div class="test" align="center">我的余额 </div>
	<div class="test1" align="center">￥<span id="tip"></span><!-- 提示信息 --></div>
	<button onclick="money()" class="button button5">立即充值</button>
		
	</p>
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