<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <script type="text/javascript">
<!--

//-->
<%
HttpSession s = request.getSession(); 
%>
	function ck(){//我的账户动态加载
	
		var name="<%=s.getAttribute("username")%>";
		//alert(name);
		if(name=="null"){
			document.getElementById("one").style.display="inline";
			document.getElementById("two").style.display="inline";
			document.getElementById("thr").style.display="none";
			document.getElementById("for").style.display="none";
			document.getElementById("fiv").style.display="none";
			document.getElementById("six").style.display="none";
			document.getElementById("ten").style.display="none";

			// 	$("ul.log li").hide();
		}else{
			//	$("ul.log li").show();
			document.getElementById("one").style.display="none";
			document.getElementById("two").style.display="none";
			document.getElementById("thr").style.display="inline";
			document.getElementById("for").style.display="inline";
			document.getElementById("fiv").style.display="inline";
			document.getElementById("six").style.display="inline";
			document.getElementById("ten").style.display="inline";

		
		}
	} 
	 $(function(){//函数调用
			ck();
	 }) 
	function login(){
		 session.setAttribute("tip", "   ");
	 }
	
</script>
	
	<div class="header">
		<div class="w3ls-header"><!--header-one--> 
		<!--  <div class="w3ls-header-left">
				<p><a href="#">超过50美元的笔记本电脑使用优惠券代码LAPPY </a></p>
			</div>-->	
			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true" onclick="ck()"></i> 我的账户<span class="caret"></span></a>
						<ul class="dropdown-menu" id="log">
							<li id="one"><a href="login" onclick="login()">登录</a></li> 
							<li id="two"><a href="signup">注册</a></li> 
							<li id="thr"><a href="#"><%=s.getAttribute("username")%></a></li>
							<li id="ten"><a href="cart">我的购物车</a></li>
							<li id="for"><a href="order">我的订单</a></li> 
							<li id="fiv"><a href="wallet">钱包</a></li> 
							<li id="six"><a href="out">退出</a></li> 
						</ul> 
						
						
					</li> 
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-percent" aria-hidden="true"></i> 今日热卖<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers">现金回送</a></li> 
							<li><a href="offers">产品折扣</a></li>
							<li><a href="offers">特别优惠</a></li> 
						</ul> 
					</li> 
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gift" aria-hidden="true"></i> 礼品卡<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers">产品礼品卡</a></li> 
							<li><a href="offers">场合寄存器</a></li>
							<li><a href="offers">视图平衡</a></li> 
						</ul> 
					</li> 
				 	<li class="dropdown head-dpdn">
						<a href="sitemap" class="dropdown-toggle"><i class="fa fa-map-marker" aria-hidden="true"></i> 站点地图</a>
					</li> 
					<li class="dropdown head-dpdn">
						<a href="card" class="dropdown-toggle"><i class="fa fa-credit-card-alt" aria-hidden="true"></i> 信用卡</a>
					</li> 
					<li class="dropdown head-dpdn">
						<a href="help" class="dropdown-toggle"><i class="fa fa-question-circle" aria-hidden="true"></i>帮助</a>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div> 
		</div>
		
		<div class="header-three"><!-- header-three -->
			<div class="container">
				<div class="menu">
					<div class="cd-dropdown-wrapper">
						<a class="cd-dropdown-trigger" href="#0">商品类别</a>
						<nav class="cd-dropdown"> 
							<a href="#0" class="cd-close">Close</a>
							<ul class="cd-dropdown-content"> 
								<li><a href="offers">今日优惠</a></li>
								<li class="has-children">
									<a href="#">数码产品</a> 
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
										<li class="see-all"><a href="products">全部电子产品</a></li>
										<li class="has-children">
											<a href="#">移动电话</a>  
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#">全部电子产品</a></li> 
												<li class="has-children">
													<a href="#0">智能手机</a> 
													<ul class="is-hidden"> 
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="headsearchproducts?type=1">Android</a></li>
														<li><a href="products">Windows</a></li>
														<li><a href="products">Black berry</a></li>
													</ul>
												</li>
												<li> <a href="products">IPhones</a> </li>
												<li><a href="products">Tablets</a></li>
												<li><a href="products">IPad</a></li>
												<li><a href="products">Feature Phones</a></li> 
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">大型家电</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#">全部电子产品 </a></li>
												<li><a href="products">冰箱</a></li> 
												<li><a href="products">洗衣机</a></li>
												<li><a href="products">办公用品</a></li>
												<li><a href="products">空调</a></li>
												<li><a href="products">家庭自动化</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">娱乐</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#">全部电子产品 </a></li>
												<li><a href="products">电视及配件</a></li>
												<li><a href="products">数码相机</a></li>
												<li><a href="products">游戏</a></li>
												<li><a href="products">家庭音响与剧院</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li> 
														<li><a href="products">笔记本电脑 </a></li>
														<li><a href="products">游戏电脑</a></li>
														<li><a href="products">显示器</a></li>
														<li><a href="products">网络</a></li>
														<li><a href="products">打印机及用品</a></li>
														<li><a href="products">配件</a></li>
													</ul>
												</li> 
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">家用电器</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部电子产品  </a></li>
												<li class="has-children"><a href="#">厨房用具</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products">电饭煲</a></li>
														<li><a href="products">混合榨汁机</a></li>
														<li><a href="products">研磨机</a></li>
														<li><a href="products">搅拌机和切碎机</a></li>
														<li><a href="products">微波炉</a></li>
														<li><a href="products">食品加工商</a></li>
													</ul>
												</li>
												<li><a href="products">净化器</a></li>
												<li><a href="products">间歇泉</a></li>
												<li><a href="products">煤气炉</a></li>
												<li><a href="products">真空吸尘器</a></li>
												<li><a href="products">缝纫机</a></li> 
												<li><a href="products">暖风机和风机</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">小型设备</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#0">全部电子产品  </a></li>
												<li><a href="products">WiFi软件</a></li>
												<li><a href="products">路由器和调制解调器</a></li>
												<li class="has-children"><a href="#">存储设备</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products">云存储</a></li>
														<li><a href="products">硬盘</a></li>
														<li><a href="products">SSD</a></li>
														<li><a href="products">笔驱动器</a></li>
														<li><a href="products">存储卡</a></li> 
														<li><a href="products">安全设备</a></li> 
													</ul>
												</li> 
												<li><a href="products">办公用品</a></li>
												<li><a href="products">切断电缆</a></li>
												<li><a href="products">汽车电子</a></li>  
											</ul>
										</li>
										<li class="has-children">
											<a href="#">个人护理</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#0">全部产品  </a></li>
												<li><a href="products">脱毛器</a></li> 
												<li><a href="products">理发器</a></li>
												<li><a href="products">修剪机和剃须刀</a></li>
												<li><a href="products">保健</a></li> 
												<li><a href="products">备用电线</a></li>
											</ul>
										</li>
									</ul> <!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="#">时装店</a> 
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products1">所有时装店</a></li>
										<li class="has-children">
											<a href="#">女装</a> 
											<ul class="is-hidden">  
												<li class="go-back"><a href="#">所有时装店</a></li>
												<li><a href="products1">民族服饰</a></li>
												<li><a href="products1">孕妇装</a></li>
												<li><a href="products1">内衣和睡衣 </a></li>
												<li><a href="products1">休闲装 </a></li>
												<li><a href="products1">正式穿着</a></li>
												<li><a href="products1">运动服</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">男童服装</a> 
											<ul class="is-hidden">  
												<li class="go-back"><a href="#">所有时装店</a></li>
												<li><a href="products1">牛仔裤</a></li>  
												<li><a href="products1">休闲装</a></li> 
												<li><a href="products1">短裤</a></li> 
												<li><a href="products1">T恤衫</a></li> 
												<li><a href="products1">其他</a></li> 
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">夹克</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#">所有时装店</a></li>
												<li><a href="products1">开拓者</a></li>
												<li><a href="products1">轰炸机外套</a></li>
												<li><a href="products1">牛仔布夹克</a></li>
												<li><a href="products1">达夫外套</a></li>
												<li><a href="products1">皮夹克</a></li>
												<li><a href="products1">帕卡斯</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">配件 </a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#">所有时装店</a></li>
												<li><a href="products1">手表 </a></li>
												<li><a href="products1">眼镜 </a></li>
												<li><a href="products1">珠宝 </a></li>
												<li class="has-children">
													<a href="#">鞋类 </a>  
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products1">民族鞋</a></li>  
														<li><a href="products1">休闲鞋</a></li>
														<li><a href="products1">运动鞋</a></li>
														<li><a href="products1">靴子</a></li>
													</ul> 
												</li> 
												<li><a href="products1">披肩和围巾</a></li>
												<li><a href="products1">手提包</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">美女</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#">所有时装店</a></li>
												<li><a href="products1">香水及罗尼</a></li>
												<li><a href="products1">口红和指甲油</a></li>
												<li><a href="products1">礼物礼品篮</a></li> 
												<li><a href="products1">个人仪容仪表</a></li>
												<li><a href="products1">旅行包</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="products1">个人护理</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#">所有时装店</a></li>
												<li><a href="products1">面部护理</a></li>
												<li><a href="products1">指甲护理</a></li>
												<li><a href="products1">洗护发用品</a></li>
												<li><a href="products1">身体护理</a></li>
												<li><a href="products1">沐浴与温泉</a></li>   
											</ul>
										</li>
									</ul> <!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="products2">儿童时尚与玩具</a> 
									<ul class="cd-secondary-dropdown is-hidden"> 
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products2">所有孩子的时尚用品</a></li>
										<li class="has-children">
											<a href="products2">儿童服装</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#">所有孩子的时尚用品</a></li>
												<li><a href="products2">民族服饰 </a></li> 
												<li><a href="products2">睡衣 </a></li>
												<li><a href="products2">连衣裙 </a></li>
												<li><a href="products2">冬装</a></li>
												<li><a href="products2">进口服装</a></li>
											</ul>
										</li> 
										<li class="has-children"><a href="#">儿童 时尚</a>
											<ul class="is-hidden">  
												<li class="go-back"><a href="#">所有孩子的时尚用品</a></li>
												<li><a href="products2">鞋类</a></li> 
												<li><a href="products2">太阳镜 </a></li>
												<li><a href="products2">学校文具</a></li>
												<li><a href="products2">珠宝</a></li>
												<li><a href="products2">发带和夹子</a></li>
											</ul>
										</li>
										<li class="has-children"><a href="#">婴儿用品</a>
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#">所有孩子的时尚用品</a></li>
												<li><a href="products2">洗剂、油和粉 </a></li> 
												<li><a href="products2">肥皂、洗发水 </a></li>
												<li><a href="products2">浴巾</a></li> 
												<li class="has-children">
													<a href="#">食物</a> 
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li> 
														<li><a href="products2">婴儿食品 </a></li>
														<li><a href="products2">奶瓶 </a></li>
														<li><a href="products2">母乳喂养</a></li>  
													</ul>
												</li>  
												<li><a href="products2">婴儿房</a></li> 	
											</ul><!-- .cd-secondary-dropdown --> 
										</li> <!-- .has-children -->								
										<li class="has-children"><a href="#">玩具 </a>
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#">所有孩子的时尚用品</a></li>
												<li><a href="products2">美术</a></li> 
												<li><a href="products2">益智玩具 </a></li>
												<li><a href="products2">婴儿玩具</a></li> 
												<li><a href="products2">户外游戏 </a></li> 
												<li><a href="products2">乐器</a></li>
											</ul>
										</li>
										<li> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#">所有孩子的时尚用品</a></li>
												<li><a href="products2">玩具的技巧</a></li> 
												<li><a href="products2">学前玩具</a></li>
												<li><a href="products2">乐器</a></li> 
												<li><a href="products2">自行车</a></li>
												<li><a href="products2">电子游戏</a></li>
												<li><a href="products2">数字游戏</a></li>
											</ul>	
										</li> 
									</ul><!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children --> 
								<li class="has-children">
									<a href="#">家居、家具与庭院</a> 
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products3">所有产品</a></li>
										<li class="has-children">
											<a href="#">厨房用品</a> 
											<ul class="is-hidden">  
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products3">晚餐套餐 </a></li> 
												<li><a href="products3">炊具及烘焙用具 </a></li>
												<li><a href="products3">容器和罐子 </a></li>
												<li><a href="products3">厨房用具 </a></li>
												<li><a href="products3">食品贮藏</a></li>
												<li><a href="products3">砂锅菜</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">家具 </a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products3">卧室 </a></li> 
												<li><a href="products3">餐厅 </a></li>
												<li><a href="products3">儿童家具 </a></li>
												<li><a href="products3">客厅</a></li>
												<li><a href="products3">办公室</a></li>
												<li><a href="products3">床垫</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">家居装饰 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products3">照明</a></li> 
												<li><a href="products3">绘画</a></li>
												<li><a href="products3">窗帘</a></li>
												<li><a href="products3">户外家具</a></li>
												<li><a href="products3">Wardrobes & Cabinets</a></li>
												<li><a href="products3">床垫</a></li>
											</ul>
										</li>  
										<li class="has-children">
											<a href="#">园艺与草坪 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"> </a></li>  
												<li><a href="products3">园艺 </a></li> 
												<li><a href="products3">园林绿化 </a></li>
												<li><a href="products3">棚屋</a></li>
												<li><a href="products3">户外储藏 </a></li>
												<li><a href="products3">园林与理念 </a></li>
												<li><a href="products3">天井小费</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">车库储存</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products3">篮子和垃圾箱 </a></li> 
												<li><a href="products3">开门器</a></li>
												<li><a href="products3">可移动货架 </a></li>
												<li><a href="products3">地板清洗</a></li>
												<li><a href="products3">工具包</a></li>
											</ul>
										</li>  
									</ul><!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->  
								<li class="has-children">
									<a href="#">体育健身户外运动</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products4">所有产品</a></li>
										<li class="has-children">
											<a href="#">单项运动 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products4">自行车 </a></li> 
												<li><a href="products4">钓鱼  </a></li>
												<li><a href="products4">自行车 </a></li>
												<li><a href="products4">乐器</a></li>
												<li><a href="products4">射箭 </a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">团队运动</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products4">板球 </a></li> 
												<li><a href="products4">羽毛球 </a></li>
												<li><a href="products4">游泳用具 </a></li>
												<li><a href="products4">运动服装</a></li>
												<li><a href="products4">室内游戏</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">体育保健用品 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products4">健身器材 </a></li> 
												<li><a href="products4">运动器材 </a></li>
												<li><a href="products4">椭圆机 </a></li>
												<li><a href="products4">家庭健身房</a></li> 
												<li><a href="products4">运动自行车</a></li> 
											</ul>
										</li>
										<li class="has-children">
											<a href="#">露营 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products4"> 气垫层</a></li> 
												<li><a href="products4">帐篷 </a></li>
												<li><a href="products4">露台和庇护所</a></li>
												<li><a href="products4">冷却器</a></li>
												<li><a href="products4">檐篷</a></li>
												<li><a href="products4">睡袋</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">野营工具</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products4">射击 </a></li> 
												<li><a href="products4">刀具和工具 </a></li>
												<li><a href="products4">光学双筒望远镜 </a></li>
												<li><a href="products4">灯笼 </a></li>
												<li><a href="products4">狩猎服装 </a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">其他</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products4">摩托 </a></li> 
												<li><a href="products4">按摩器 </a></li>
												<li><a href="products4">健康监测 </a></li>
												<li><a href="products4">保健饮料 </a></li> 
											</ul>
										</li> 	
									</ul><!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->  
								<li class="has-children">
									<a href="#">杂货店</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products5">所有产品</a></li>
										<li class="has-children">
											<a href="#">蔬菜水果 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products5">蔬菜 </a></li> 
												<li><a href="products5">水果 </a></li>
												<li><a href="products5">干果</a></li> 
												<li><a href="products5">零食和饼干 </a></li>
												<li><a href="products5">早餐和谷物</a></li> 
											</ul> 
										</li> 
										<li class="has-children">
											<a href="#">包装食品</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products5">饮料 </a></li> 
												<li><a href="products5">烘烤</a></li>
												<li><a href="products5">应急食品 </a></li>
												<li><a href="products5">糖果和口香糖 </a></li>
												<li><a href="products5">膳食与面食</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">宠物店</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products5">狗</a></li>  
												<li><a href="products5">鱼 </a></li>												
												<li><a href="products5">猫</a></li>
												<li><a href="products5">鸟</a></li>
												<li><a href="products5">宠物食品 </a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">家庭必需品 </a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products5">洗衣房 </a></li> 
												<li><a href="products5">纸与塑料</a></li>
												<li><a href="products5">害虫防治 </a></li>
												<li><a href="products5">电池组 </a></li> 
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">食品店</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products5">生鲜食品</a></li> 
												<li><a href="products5">食品礼品 </a></li>
												<li><a href="products5">冷冻食品 </a></li>
												<li><a href="products5">有机食品</a></li>
												<li><a href="products5">无麸质 </a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">列表 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products5">宠物成长</a></li> 
												<li><a href="products5">食谱 </a></li>
												<li><a href="products5">休闲食品</a></li>
												<li><a href="products5">营养</a></li> 
											</ul>
										</li> 
									</ul><!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->  
								<li class="has-children">
									<a href="#">照片、礼品及办公用品</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products6">所有产品</a></li>
										<li class="has-children">
											<a href="#">当下趋势 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products6">最佳定价</a></li> 
												<li><a href="products6">巧克力 </a></li>
												<li><a href="products6">礼品卡 </a></li>
												<li><a href="products6">时装及配件 </a></li>
												<li><a href="products6">装饰植物 </a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">照片</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products6">货架动画 </a></li> 
												<li><a href="products6">3D-打印 </a></li>
												<li><a href="products6">礼品制作 </a></li>
												<li><a href="products6">框架</a></li>
												<li><a href="products6">墙饰</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">礼品 </a> 
											<ul class="is-hidden">	
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products6">个性化礼品</a></li> 
												<li><a href="products6">花 </a></li>
												<li><a href="products6">卡片和玩具</a></li>
												<li><a href="products6">Show pieces </a></li>
												<li><a href="products6">相册</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">最受欢迎的品牌 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products6">Archies </a></li> 
												<li><a href="products6">Jewel Fuel </a></li>
												<li><a href="products6">Ferns N Petals </a></li>
												<li><a href="products6">Happily Unmarried</a></li>
												<li><a href="products6">Chumbak</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">办公室</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products6">历法</a></li> 
												<li><a href="products6">鼠标垫</a></li>
												<li><a href="products6">电话案例</a></li>
												<li><a href="products6">平板电脑及笔记本电脑外壳</a></li>
												<li><a href="products6">挂载照片</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">组合</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products6">巧克力 </a></li> 
												<li><a href="products6">干果</a></li>
												<li><a href="products6">糖果</a></li>
												<li><a href="products6">休闲食品</a></li>
												<li><a href="products6">蛋糕</a></li>
											</ul>
										</li> 
									</ul><!-- .cd-secondary-dropdown --> 
								</li> 
								<li class="has-children">
									<a href="#">健康、美容与药学</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products7">所有产品</a></li>
										<li class="has-children">
											<a href="#">健康</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products7">家庭保健 </a></li> 
												<li><a href="products7">运动营养学 </a></li>
												<li><a href="products7">视觉 </a></li>
												<li><a href="products7">维生素</a></li>
												<li><a href="products7">饮食与营养 </a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">健康提示</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products7">饮食</a></li> 
												<li><a href="products7">运动技巧 </a></li>
												<li><a href="products7">维生素平衡</a></li>
												<li><a href="products7">健康保险</a></li>
												<li><a href="products7">葬礼</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">美女</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products7">按摩温泉</a></li> 
												<li><a href="products7">面部清洗</a></li>
												<li><a href="products7">洗面奶</a></li>
												<li><a href="products7">化妆 </a></li>
												<li><a href="products7">美容秘诀</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">药店 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products7">送货上门</a></li> 
												<li><a href="products7">历史与报道 </a></li>
												<li><a href="products7">转移处方 </a></li>
												<li><a href="products7">健康检查</a></li>
												<li><a href="products7">移动应用程序</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">药学中心 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products7">糖尿病商店 </a></li> 
												<li><a href="products7">药柜 </a></li>
												<li><a href="products7">维生素选择器</a></li>
												<li><a href="products7">药学帮助</a></li> 
											</ul>
										</li>  
									</ul><!-- .cd-secondary-dropdown --> 
								</li>
								<li class="has-children">
									<a href="#">汽车</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products8">所有产品</a></li>
										<li class="has-children">
											<a href="#">所有电机 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products8">自行车 </a></li> 
												<li><a href="products8">游艇</a></li>
												<li><a href="products8">滑板车 </a></li>
												<li><a href="products8">汽车</a></li>
												<li><a href="products8">巴士</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">配件 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products8">汽车电子</a></li> 
												<li><a href="products8">立体声和监视器</a></li>
												<li><a href="products8">蓝牙设备</a></li>
												<li><a href="products8">GPS导航</a></li>
												<li><a href="products8">扬声器和高音喇叭</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">安全 </a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products8">防盗装置 </a></li> 
												<li><a href="products8">头盔s</a></li>
												<li><a href="products8">传感器</a></li>
												<li><a href="products8">汽车修理工具 </a></li>
												<li><a href="products8">防冻液和冷却剂 </a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">汽车内饰</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products8">立体声音响 </a></li> 
												<li><a href="products8">地板垫</a></li>
												<li><a href="products8">座椅套</a></li>
												<li><a href="products8">充电器 </a></li>
												<li><a href="products8">音频查找器 </a></li>
											</ul>
										</li>  
										<li class="has-children">
											<a href="#">外部附件 </a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products8">车轮罩 </a></li> 
												<li><a href="products8">汽车照明 </a></li>
												<li><a href="products8">抛光蜡</a></li>
												<li><a href="products8">货物管理</a></li>
												<li><a href="products8">汽车装饰 </a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">汽车护理</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products8">汽车提示和建议</a></li> 
												<li><a href="products8">洗车和清洁器 </a></li>
												<li><a href="products8">汽车蜡和抛光剂</a></li>
												<li><a href="products8">清洗工具</a></li>
												<li><a href="products8">详述工具包 </a></li>
											</ul>
										</li> 
									</ul><!-- .cd-secondary-dropdown --> 
								</li>
								<li class="has-children">
									<a href="#">书籍、音乐和电影</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products9">所有产品</a></li>
										<li class="has-children">
											<a href="#">书</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li class="has-children"><a href="#">考试相关 </a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products9">CAT/MAT/XAT</a></li>
														<li><a href="products9">文学服务</a></li>
														<li><a href="products9">AFCAT</a></li>
														<li><a href="products9">新版本</a></li>
													</ul>												
												</li>
												<li><a href="products9">学术文本 </a></li>
												<li><a href="products9">浪漫书籍</a></li>
												<li><a href="products9">期刊销售 </a></li>
												<li><a href="products9">儿童少年读物 </a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">音乐</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products9">新版本 </a></li> 
												<li><a href="products9">乡村音乐 </a></li>
												<li><a href="products9">乐器</a></li>
												<li><a href="products9">收藏</a></li>
												<li><a href="products9">盒装集</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">音乐组合</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products9">流行音乐 </a></li> 
												<li><a href="products9">预购</a></li>
												<li><a href="products9">专辑歌曲</a></li>
												<li><a href="products9">排名前50的CDS </a></li>
												<li><a href="products9">音乐DVDs </a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">电影</a> 
											<ul class="is-hidden"> 
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products9">新版本 </a></li> 
												<li><a href="products9">儿童与家庭 </a></li>
												<li><a href="products9">动作</a></li>
												<li><a href="products9">经典电影 </a></li>
												<li><a href="products9">宝莱坞电影 </a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">电影组合</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products9">好莱坞电影 </a></li> 
												<li><a href="products9">数字电影 </a></li>
												<li><a href="products9">盒装集</a></li>
												<li><a href="products9">生活类</a></li>
												<li><a href="products9">冒险</a></li>
											</ul>
										</li> 
										<li class="has-children">
											<a href="#">电视节目</a> 
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li><a href="products9">连续出版物</a></li> 
												<li><a href="products9">最佳节目</a></li>
												<li><a href="products9">庆典</a></li>
												<li><a href="products9">顶级节目</a></li> 
											</ul>
										</li> 
									</ul><!-- .cd-secondary-dropdown --> 
								</li>  
								<li><a href="sitemap">完整站点目录 </a></li>  
							</ul> <!-- .cd-dropdown-content -->
						</nav> <!-- .cd-dropdown -->
					</div> <!-- .cd-dropdown-wrapper -->	 
				</div>
				<div class="move-text">
					<div class="marquee"><a href="offers">这里有新的藏品……<span>全部有10%的额外折扣|无附加税 </span> <span> 体验免运费（15天）</span></a></div>
					<script type="text/javascript" src="js/jquery.marquee.min.js"></script>
					<script>
					  $('.marquee').marquee({ pauseOnHover: true });
					  //@ sourceURL=pen.js
					</script>
				</div>
			</div>
		</div>
	</div>