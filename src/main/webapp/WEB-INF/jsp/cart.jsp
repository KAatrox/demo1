<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>数码商城ヾ(；ﾟ(OO)ﾟ)ﾉ</title>
<link rel="icon" href="images/logo.jpg" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/angular.min.js" type="text/javascript" charset="utf-8"></script>
<%@ page pageEncoding="utf-8"%>
<head>
<title>Help</title>
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
<%
HttpSession s = request.getSession(); 
%>
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
		
// 		function order(){						//购物车表格数据加载
// 			$("#tb tr:not(:first)").empty(""); //动态删除表格信息
// 		//	var	table=document.getElementById('tb');
// 			$.ajax({	
// 					 url:"${pageContext.request.contextPath}/shop/cartdata",		//"/shop/ckname"处理
// 					 type:"POST",
// 					 contentType:'application/json',
// 					 //data:name
// 					 processData:false,
// 					 dataType:"JSON",
// 					 success:function(data){
// 						 //console.log(typeof data);
// 						 console.log(data);
// 						 var Shoppingcart=null;
// 						 $.each(data, function() {
// 								Shoppingcart += "<tr><td>" + this.comId+"</td><td>"+this.comName 
// 								+"</td><td>"+this.comNum +"</td><td>"+this.compri
// 								+"</td><td>"+this.totalprice
// 								+"</td></tr>";
// 								//table.appendChild(tr);
								 
								
// 							});
// 						 $("#tb").append(Shoppingcart);	//数据填充
						
						
// 					 }
					 
//    		})
// 		}
	//	 $(function(){//函数调用
	//			order();
	//	 }) 
		 
		 
		 function remove(){		//移除商品
			 var comid=document.getElementByName('comid').innerHTML;
			 alert(comid);
			 var msg = "确认移除该商品？";
		    	if (confirm(msg)==true){
		    		$("#tb tr:not(:first)").empty(""); //动态删除表格信息
		    		$.ajax({	
						 url:"${pageContext.request.contextPath}/removecart",		//"/shop/ckname"处理
						 type:"POST",
						 contentType:'application/json',
						 data:comid, 
						 processData:false,
						 dataType:"JSON",
						 success:function(data){
							 //console.log(typeof data);
							 console.log(data);
							 var Shoppingcart=null;
							 $.each(data, function() {
									Shoppingcart += "<tr><td>" + this.comId+"</td><td>"+this.comName 
									+"</td><td>"+this.comNum +"</td><td>"+this.comprice
									+"</td><td>"+this.compri
									+"</td></tr>";
									
								});
							 $("#tb").append(Shoppingcart);	//数据填充
							
							
						 },
						 error:function(data){
							 alert("!");
						 }	 
				})
		    		alert("移除成功");
		    		return true;
		    	
		    	}else{
		    		return false;
		    	}
		
		 }
		 function pay(){		//购物车支付
			 var msg = "确认支付？";
		    	if (confirm(msg)==true){
		    		$("#tb tr:not(:first)").empty(""); //动态删除表格信息
		    		$.ajax({	
						 url:"${pageContext.request.contextPath}/paycart",		//"/shop/ckname"处理
						 type:"POST",
						 contentType:'application/json',
						 data:comid, 
						 processData:false,
						 dataType:"JSON",
						 success:function(data){
							 //console.log(typeof data);
							 console.log(data);
							 var Shoppingcart=null;
							 $.each(data, function() {
									Shoppingcart += "<tr><td>" + this.comId+"</td><td>"+this.comName 
									+"</td><td>"+this.comNum +"</td><td>"+this.comprice
									+"</td><td>"+this.compri
									+"</td></tr>";
								});
							 $("#tb").append(Shoppingcart);	//数据填充
							
							
						 },
						 error:function(data){
							 alert("!");
						 }	 
				})
		    		alert("支付成功");
		    		return true;
		    	
		    	}else{
		    		return false;
		    	}
		
		 }
		 
		 
		 function empty(){		//清空购物车 
				
			 	var msg = "确认清空购物车？";
		    	if (confirm(msg)==true){
		    		 $("#tb tr:not(:first)").empty(""); //动态删除表格信息
		    		 $.ajax({	
						 url:"${pageContext.request.contextPath}/cartempty",		//"/shop/ckname"处理
						 type:"POST",
						 contentType:'application/json',
						 //data:name
						 processData:false,
						 dataType:"JSON",
						 success:function(data){
							 //console.log(typeof data);
							 console.log(data);
							 var Shoppingcart=null;
							 $.each(data, function() {
									Shoppingcart += "<tr><td>" + this.comId+"</td><td>"+this.comName 
									+"</td><td>"+this.comNum +"</td><td>"+this.compri
									+"</td><td>"+this.totalprice
									+"</td></tr>";
								});
							 $("#tb").append(Shoppingcart);	//数据填充
							
							
						 }
						 
				})
		    		
		    		alert("清空成功");
		    		return true;
		    	}else{
		    		return false;
		    	}
			
		 }
		 function del() {
		    	var msg = "确认删除？";
		    	if (confirm(msg)==true){
		    		alert("删除成功");
		    	return true;
		    	}else{
		    	return false;
		    	}
		    	}
		 function pay() {
		    	var msg = "确认支付？";
		    	if (confirm(msg)==true){
		    		alert("支付成功");
		    	return true;
		    	}else{
		    	return false;
		    	}
		    	}
		 function add(obj){
			 var num= $(obj).parents('td').find('#num').val(); //获取对应购买数量的值
			 //alert(num);
			 document.getElementById('num').value=parseInt(num,10)+1;//数量加
		//	 alert(document.getElementById('num').value);
			 var num1=parseInt(num,10)+1;
			 alert(num1);
			 
		 }
		 function cut(obj){
			 var num= $(obj).parents('td').find('#num').val(); //获取对应购买数量的值
			 document.getElementById('num').value=parseInt(num,10)-1;//数量加		
			 var num1=parseInt(num,10)-1;
			 alert(num1);
			 
		 }
	</script>
	<!-- //smooth-scrolling-of-move-up -->
</head>
<body >
<!-- header -->

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:import url="head.jsp" charEncoding="utf-8" />
	<!-- //header --> 	
	
	
	<table width="800px" class="table" id="tb" >
	<thead>
  	<tr>
  	 <th>商品编号</th>
 	 <th>商品名称</th>
  	 <th>购买数量</th>
  	 <th>商品单价</th>
  	 <th>支付总额(RMB)</th>
  	 <th>操作</th>
  
  	 </tr>
	</thead>
	 <tbody>
    <c:forEach items="${cartdata}" var="cart">
    <tr>
      <td>${cart.comId}</td>
      <td>${cart.comName}</td>
      <td>
      	<a href="/cartnum?&comid=${cart.comId}&comnum=${cart.comNum-1}" type="button"  class="btn btn-primary btn-sm" onclick="cut(this)">-</a>
     	<input type="text" value="${cart.comNum}" style="text-align: center;" id="num">	 
      	<a href="/cartnum?&comid=${cart.comId}&comnum=${cart.comNum+1}" type="button"  class="btn btn-primary btn-sm" onclick="add(this)">+</a>
      </td>
      <td>${cart.compri}</td>
      <td>${cart.totalprice}</td>
  	  
  	  <td>
  	  
  	  	<a href="/removecart?&comid=${cart.comId}"  onclick="javascript:return del();"class="btn btn-danger btn-sm">移除</a>
  	  </td>
    </tr>
    </c:forEach>
    </br>
<!--     <div class="row" vertical-align = "center"> -->
<!--   <div class="col-md-8"></div> -->
<!--   <div class="col-md-2"> -->
 
<!--   <div class="col-md-2"> -->
<!--   </div> -->
<!-- </div> -->




  </tbody>
	</table>
	<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-1"></div>
  <div class="col-md-1"></div>
  <div class="col-md-1"></div>
  <div class="col-md-1"></div>
  <div class="col-md-1"></div>
  <div class="col-md-1"></div>
  <div class="col-md-1"></div>
	<div class="col-md-1"><a href ="" onclick="javascript:return pay();" class="btn btn-danger btn-sm">支付</a></div>
<!-- <button type="button"  onclick="remove()" class="btn btn-danger btn-sm">移除</button> -->
<!-- <button type="button"  onclick="pay()" class="btn btn-danger btn-sm">支付</button> -->
 <div class="col-md-1"><a href ="" onclick="empty()" class="btn btn-danger btn-sm">清空购物车</a></div>
 <div class="col-md-1"></div>
  <div class="col-md-1"></div>
  </div>
 
	

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