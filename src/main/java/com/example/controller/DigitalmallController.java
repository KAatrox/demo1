package com.example.controller;

import io.lettuce.core.RedisFuture;
import io.lettuce.core.api.async.RedisAsyncCommands;

import java.security.Timestamp;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;









import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.lettuce.RedisCli;
import com.example.mapper.DigitalmallMapper;
import com.example.model.Author;
import com.example.model.Message;
import com.example.model.Shoppingcart;
import com.example.model.User;
import com.example.model.UserOrder;
import com.example.model.helpinfo;




@Controller
public class DigitalmallController<JSONObject> {
	
	Logger logger = LoggerFactory.getLogger(DigitalmallController.class);
	
	@Autowired
	DigitalmallMapper digitalmallMapper;
	
	@PostMapping(value="/dologin")//登录验证函数
	public String login(@RequestParam String email,@RequestParam String password,
		HttpSession session,HttpServletRequest request,	HttpServletResponse response	
		){
		session.setAttribute("tip", "用户名或密码错误!");
		User user=digitalmallMapper.login(email,password);
		if(request.getParameter("remember")!=null){	//是否记住用户名
			//System.out.println("!");
			Cookie ckUsername = new Cookie("username", email);
			ckUsername.setMaxAge(60);
			response.addCookie(ckUsername);
			if(user!=null){
				
				session.setAttribute("username", email);//登录成功后保存用户名
				return "index";
			}
				session.setAttribute("tip", "用户名或密码错误!");
				return "login";
			
		}else{
			if(user!=null){
				
				session.setAttribute("username", email);//登录成功后保存用户名
				return "index";
			}
				session.setAttribute("tip", "用户名或密码错误!");
			return "login";
		}
		
		
	}
	
	@PostMapping(value="/dosign")// 注册
	public String sign(@RequestParam String name,@RequestParam String email,
			@RequestParam String password,
	HttpSession session,HttpServletRequest request,	HttpServletResponse response	
	){
		User user=new User();
		user.setUserName(name);
		user.setEmail(email);
		user.setUserPwd(password);
		int i=digitalmallMapper.sign(user);
		
		return "login";
	}
	
	
	
	@PostMapping(value="/chpwd" )// 重置密码
	public String chpwd(@RequestParam String email,@RequestParam String password,
	@RequestParam String password1,
	HttpSession session,HttpServletRequest request,	HttpServletResponse response	
	){
		List<User> user=digitalmallMapper.ckemail(email);
		if(user!=null){
			if(password.equals(password1)){
				digitalmallMapper.updatepwd(password,email);
				return "login";
			}
				return "forget";
		}else{
				//session.setAttribute("tipch", "该邮箱未注册用户o_O");
				return "forget";
		}
		
		
	}
	
	@PostMapping(value="/ckname", consumes="application/json")//注册用户名验证
	@ResponseBody
	public List<User> ckname(@RequestBody String name) 
	{
		List<User> user=digitalmallMapper.ckname(name);	
		return user;	
	}
	
	@PostMapping(value="/ckemail", consumes="application/json")//忘记密码邮箱验证
	@ResponseBody
	public List<User> ckemail(@RequestBody String email) 
	{
		List<User> user=digitalmallMapper.ckemail(email);	
		return user;	
	}
	
	@PostMapping(value="/contact")			// 留言操作(需优化)
	public String message(@RequestParam String Name,@RequestParam String Email,
			@RequestParam String Message,
	HttpSession session,HttpServletRequest request,	HttpServletResponse response	
	){
		Message mes=new Message();
		mes.setMesName(Name);
		mes.setMesEmail(Email);
		mes.setMestext(Message);
		int i=digitalmallMapper.message(mes);
		
		return "contact";
	}
	
	
	
	@PostMapping(value="/wallet", consumes="application/json")//钱包余额
	@ResponseBody
	public List<User> wallet(
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) 
	{	
		HttpSession s = request.getSession();
		String username=(String) s.getAttribute("username");
		List<User> wa=digitalmallMapper.wallet(username);	
		return wa;	
	}
	
	@GetMapping(value="/out")			// 退出账户
	public String out(
	HttpSession session,HttpServletRequest request,	HttpServletResponse response	
	){
		
		session.invalidate();
		return "login";
	}
	
	
	@PostMapping(value="/myorder", consumes="application/json")//我的订单（redis）
	@ResponseBody
	public List<UserOrder> myorder(
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) throws Exception 
	{	
		logger.debug("----------runing.........-------------------");
		HttpSession s = request.getSession();
		String username=(String) s.getAttribute("username");
		List<UserOrder> order = null;
		order = readFromRedis();		//调用readFromRedis方法，从redis读数据
		if(order.size()==0){
			logger.debug("----------read from database-------------------");
			order =  digitalmallMapper.myorder(username);//调用myorder方法，查看用户订单
			writeToRedis(order);
		}
		return order;	
	}
	
	private List<UserOrder> readFromRedis() throws Exception {	//我的订单操作--从redis读数据
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();	
		final List<UserOrder> order = new ArrayList();
		RedisFuture<List<String>> futureKeys = asyncCommands.keys("order*");		
		List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态		
		if(keys.size()==0) return order;		
		for(String key: keys){
			RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
			Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
			UserOrder order1=new UserOrder();
			order1.setOrderId(Integer.valueOf(map.get("Orderid")));
			SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
			order1.setOrdertime(sf.parse(map.get("OrderTime")));
			order1.setComName(map.get("comName"));
			order1.setOrderComNm(Integer.valueOf(map.get("OrderNm")));
			order1.setOrderPri(map.get("OrderPri"));
			order1.setOrderRemark(map.get("OrderRemark"));
			order.add(order1);
		}
		logger.debug("----------read from redis-------------------");
		return order;
	}
	
	
	private void writeToRedis(List<UserOrder> order) {		//我的订单操作--写数据入redis
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		for(UserOrder orde: order){
			Map<String, String> map = new HashMap();
			map.put("Orderid", String.valueOf(orde.getOrderId()));
	        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
            String dateStr = sdf.format(orde.getOrdertime());  
			map.put("OrderTime",dateStr);
			map.put("comName", orde.getComName());
			map.put("OrderNm", String.valueOf(orde.getOrderComNm()));
			map.put("OrderPri", String.valueOf(orde.getOrderPri()));
			map.put("OrderRemark", String.valueOf(orde.getOrderRemark()));
			asyncCommands.hmset("order:"+orde.getOrderId(), map);			
		}	
	}
	
	@PostMapping(value="/searchorder", consumes="application/json")//搜索订单
	@ResponseBody
	public String searchorder(@RequestParam String condition,
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) 
	{	
		HttpSession s = request.getSession();
		String username=(String) s.getAttribute("username");
	//	int userid=Integer.parseInt(digitalmallMapper.findid(username));
	//	List<UserOrder> order=digitalmallMapper.seorder(userid, condition);	
		//System.out.println(order);
		return "order";	
	}
	
	@PostMapping(value="/cartdata", consumes="application/json")	//购物车页面
	@ResponseBody
	public List<Shoppingcart> showcart(
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) 
	{
		HttpSession s1 = request.getSession();
		String username=(String) s1.getAttribute("username");
		List<Shoppingcart> sc = digitalmallMapper.showcart(username);
		return sc;	
	}
	
	@GetMapping(value="/cartnum")	//购物车数量加减
	public String cartnum(@RequestParam int comid,@RequestParam int comnum,
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) 
	{
		System.out.println(comid);
		System.out.println(comnum);
		Shoppingcart sc=new Shoppingcart();
		sc.setComId(comid);
		sc.setComNum(comnum);
		digitalmallMapper.cartnum(sc);
		return "redirect:/cart";	
	}
	
	@GetMapping(value="/removecart")	//购物车移除商品
	public String removecart(@RequestParam int comid,//页面传输的comid值
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) 
	{
		System.out.println(comid);
		digitalmallMapper.removecart(comid);
		return "redirect:/cart";	
	}
	
	
	@GetMapping(value="/addcart")	//购物车添加商品
	public String addcart(@RequestParam String id,@RequestParam String price,
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) 
	{	HttpSession s = request.getSession();
		String username=(String) s.getAttribute("username");
		if(username==null){
				return "login";
		}else{
			int comid=Integer.parseInt(id);
			User user=digitalmallMapper.findid(username);
			int userid=user.getUserId();
			Shoppingcart scc=digitalmallMapper.findcom(id);
			if(scc!=null){
				System.out.println("!");
				int comnum=scc.getComNum();
				int newnum=comnum+1;
				Shoppingcart sc=new Shoppingcart();
				sc.setComNum(newnum);
				sc.setUserId(userid);
				sc.setComId(comid);
				
				digitalmallMapper.cartnum(sc);
				return "redirect:/headsearchproducts?type=1";	//待优化
			}else{
				Shoppingcart sc=new Shoppingcart();
				sc.setComNum(1);
				sc.setUserId(userid);
				sc.setComId(comid);
				sc.setCompri(price);
				digitalmallMapper.cartadd(sc);
				return "redirect:/headsearchproducts?type=1";	//待优化
			}
		}
		
	}
	
	@GetMapping(value="/addcarts")	//商品详情页面购物车添加商品
	public String addcarts(@RequestParam String name,
	@RequestParam String id,@RequestParam String price,
	@RequestParam String images1,@RequestParam String images2,
	@RequestParam String images3,
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) 
	{	
		HttpSession s = request.getSession();
		String username=(String) s.getAttribute("username");
		if(username==null){
				return "login";
		}else{
			int comid=Integer.parseInt(id);
			User user=digitalmallMapper.findid(username);
			int userid=user.getUserId();
			Shoppingcart scc=digitalmallMapper.findcom(id);
			if(scc!=null){
				System.out.println("!");
				int comnum=scc.getComNum();
				int newnum=comnum+1;
				Shoppingcart sc=new Shoppingcart();
				sc.setComNum(newnum);
				sc.setUserId(userid);
				sc.setComId(comid);				
				digitalmallMapper.cartnum(sc);
				return "redirect:/headsearchproducts?type=1";	//待优化
			}else{
				Shoppingcart sc=new Shoppingcart();
				sc.setComNum(1);
				sc.setUserId(userid);
				sc.setComId(comid);
				sc.setCompri(price);
				digitalmallMapper.cartadd(sc);
				return "redirect:/headsearchproducts?type=1";	//待优化
			}
		}
	}
	
	
	@PostMapping(value="/cartempty", consumes="application/json")	//清空购物车
	@ResponseBody
	public List<Shoppingcart> cartempty(
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) 
	{
		
		HttpSession s1 = request.getSession();
		String username=(String) s1.getAttribute("username");
		int e=digitalmallMapper.cartempty(username);		//清空操作
		List<Shoppingcart> sc = digitalmallMapper.showcart(username);
		return sc;	
	}
	
	@PostMapping(value="/paycart", consumes="application/json")	//购物车支付
	@ResponseBody
	public List<Shoppingcart> paycart(
	HttpSession session,HttpServletRequest request,	HttpServletResponse response		
	) 
	{
		
		HttpSession s1 = request.getSession();
		String username=(String) s1.getAttribute("username");
		int e=digitalmallMapper.cartempty(username);		//清空操作
		List<Shoppingcart> sc = digitalmallMapper.showcart(username);
		return sc;	
	}
	
	@GetMapping(value="/index" )//商品显示
    public String shopindex1(Model model){
		model.addAttribute("goods", digitalmallMapper.findAllcommodity());
    	return "index";
    }
	
	
	@PostMapping(value="/searchproducts")	//搜索商品（header）
	public String searchproduct(@RequestParam("Search") String search,Model model){
		model.addAttribute("searchproducts", digitalmallMapper.searchcommodity("%"+search+"%"));
	    return "searchproducts";
	    }
	
	
	@GetMapping(value="/headsearchproducts")//搜索商品（类型）
	public String headsearchproduct(@RequestParam("type") String type,Model model){
		model.addAttribute("searchproducts", digitalmallMapper.headsearchcommodity(type));
	//	System.out.print(type);
	    return "searchproducts";
	    }
	
	@GetMapping(value="/headsearchproducts11")//筛选商品（类型）
	public String headsearchproduct11(@RequestParam("type") String type,Model model){
		model.addAttribute("searchproducts", digitalmallMapper.headsearchcommodity(type));
	//	System.out.print(type);
	    return "searchproducts";
	    }
	

	
	@PostMapping(value="/helpinfo")   //帮助页面的查询(redis)
    public String helpinfo1(@RequestParam("Search") String search,Model model) throws Exception{
		logger.debug("----------runing.........-------------------");
		List<helpinfo> helpinfos = null;
		helpinfos = readFromRedis_Help(helpinfo.class);
		if(helpinfos.size()==0){
			logger.debug("----------read from database-------------------");
			helpinfos =  digitalmallMapper.seachhelpinfo("%"+search+"%");
			writeToRedis_Help(helpinfos);
		}
		
		model.addAttribute("help", helpinfos);

    	return "helpinfo";
    }
	
	
	@PostMapping("/addmoney")		//充值操作
	@ResponseBody
	public int addmoney(@RequestBody int price,			//@RequestBody注解不能省略，否则无法接值
	    HttpSession session,HttpServletRequest request,	HttpServletResponse response){
		System.out.print(price);
		HttpSession s = request.getSession();
		String username=(String) s.getAttribute("username");
		
		User user=digitalmallMapper.findid(username);
		int userid=user.getUserId();
		
		int i=digitalmallMapper.addmoney(userid,price);//充值
	
	    return i;
	    }
	
	
	private List<helpinfo> readFromRedis_Help(Object obj) throws Exception {	//帮助页面
			RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
			final List<helpinfo> helpinfos = new ArrayList();
			RedisFuture<List<String>> futureKeys = asyncCommands.keys("helpinfo*");
			
			List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
			
			if(keys.size()==0) return helpinfos;
			
			System.out.println("class---------------"+obj.getClass().getSimpleName());
			for(String key: keys){
				RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
				Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
				helpinfo helpinfo = new helpinfo(); 
				helpinfo.setHelpinfid( Integer.valueOf(map.get("id")) );
				helpinfo.setHelpinfque( map.get("name") );
				helpinfo.setHelpinfsol( map.get("phone") );
				helpinfos.add(helpinfo);
			}
			logger.debug("----------read from redis-------------------");
			return helpinfos;
		}

		private void writeToRedis_Help(List<helpinfo> helpinfos) {	//帮助页面
			RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
			
			for(helpinfo auth: helpinfos){
				Map<String, String> map = new HashMap();
				map.put("id", String.valueOf(auth.getHelpinfid()));
				map.put("name", auth.getHelpinfque());
				map.put("phone", auth.getHelpinfsol());
				asyncCommands.hmset("helpinfo:"+auth.getHelpinfid(), map);
				
			}
			
			
		}


}
