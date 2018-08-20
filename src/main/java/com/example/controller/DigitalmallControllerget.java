package com.example.controller;



import io.lettuce.core.RedisFuture;
import io.lettuce.core.api.async.RedisAsyncCommands;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.lettuce.RedisCli;
import com.example.mapper.DigitalmallMapper;
import com.example.model.Shoppingcart;

@Controller
public class DigitalmallControllerget {
	
	Logger logger = LoggerFactory.getLogger(DigitalmallControllerget.class);
	@Autowired
	DigitalmallMapper digitalmallMapper;
	
	//商品详情页面
    @GetMapping("/mysingle")
    public String index(){
    	return "mysingle";
    }
    
	@GetMapping("/login")
    public String login(){
    	return "login";
    }
	
	@GetMapping("/about")
    public String about(){
    	return "about";
    }
	
	@GetMapping("/card")
    public String card(){
    	return "card";
    }
	
	@GetMapping("/contact")
    public String contact(){
    	return "contact";
    }
	
	@GetMapping("/faq")
    public String faq(){
    	return "faq";
    }
	
	@GetMapping("/help")
    public String help(){
    	return "help";
    }
	
	@GetMapping("/marketplace")
    public String marketplace(){
    	return "marketplace";
    }
	
	@GetMapping("/offers")
    public String offers(){
    	return "offers";
    }
	
	@GetMapping("/privacy")
    public String privacy(){
    	return "privacy";
    }
	
	@GetMapping("/products")
    public String products(){
    	return "products";
    }
	
	@GetMapping("/products1")
    public String products1(){
    	return "products1";
    }
	
	@GetMapping("/products2")
    public String products2(){
    	return "products2";
    }
	
	@GetMapping("/products3")
    public String products3(){
    	return "products3";
    }
	
	@GetMapping("/products5")
    public String products5(){
    	return "products5";
    }
	
	@GetMapping("/products6")
    public String products6(){
    	return "products6";
    }
	
	@GetMapping("/products7")
    public String products7(){
    	return "products7";
    }
	
	@GetMapping("/products8")
    public String products8(){
    	return "products8";
    }
	
	@GetMapping("/products9")
    public String products9(){
    	return "products9";
    }
	
	@GetMapping("/signup")
    public String signup(){
    	return "signup";
    }
	
	@GetMapping("/single")
    public String single(){
    	return "single";
    }
	
	@GetMapping("/sitemap")
    public String sitemap(){
    	return "sitemap";
    }
	
	@GetMapping("/values")
    public String values(){
    	return "values";
    }
	
	@GetMapping("/order")
    public String order(){
    	return "order";
    }
	
	@GetMapping("/wallet")
    public String wallet(){
    	return "wallet";
    }
	
	@GetMapping("/spbytype")
    public String spbytype(){
    	return "searchproducts";
    }
	
	@GetMapping("/cart")		//购物车页面(redis)
    public String cart(Model model,
    	HttpSession session,HttpServletRequest request,	HttpServletResponse response
    	) throws Exception{
		HttpSession s1 = request.getSession();
		String username=(String) s1.getAttribute("username");
		System.out.println(username);
		logger.debug("----------runing.........-------------------");
		List<Shoppingcart> Shoppingcarts = null;
		Shoppingcarts = readFromRedis_Cart();
		if(Shoppingcarts.size()==0){
			logger.debug("----------read from database-------------------");
			Shoppingcarts =  digitalmallMapper.showcart(username);
			writeToRedis_Cart(Shoppingcarts);
		}
		
		
		model.addAttribute("cartdata",Shoppingcarts);
    	return "cart";
    }
	
	private List<Shoppingcart> readFromRedis_Cart() throws Exception {//购物车页面
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();	
		final List<Shoppingcart> Shoppingcarts = new ArrayList();
		RedisFuture<List<String>> futureKeys = asyncCommands.keys("Shoppingcart*");		
		List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
		
		if(keys.size()==0) return Shoppingcarts;
		
		for(String key: keys){
			RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
			Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
			Shoppingcart Shoppingcart = new Shoppingcart(); 
			Shoppingcart.setCartId( Integer.valueOf(map.get("cartid")) );
			Shoppingcart.setUserId( Integer.valueOf(map.get("userid")) );
			Shoppingcart.setComId( Integer.valueOf(map.get("comid")) );
			Shoppingcart.setComNum( Integer.valueOf(map.get("comNum")) );
			Shoppingcart.setCompri( map.get("compri") );
			Shoppingcart.setComName( map.get("comName") );
			Shoppingcart.setTotalprice(map.get("Totalprice"));
			Shoppingcarts.add(Shoppingcart);
		}
		logger.debug("----------read from redis-------------------");
		return Shoppingcarts;
	}

	private void writeToRedis_Cart(List<Shoppingcart> Shoppingcarts) {	//购物车页面
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();		
		for(Shoppingcart auth: Shoppingcarts){
			Map<String, String> map = new HashMap();
			map.put("cartid", String.valueOf(auth.getCartId()));
			map.put("userid", String.valueOf(auth.getUserId()));
			map.put("comid", String.valueOf(auth.getComId()));
			map.put("comNum", String.valueOf(auth.getComNum()));
			map.put("compri", auth.getCompri());
			map.put("comName", auth.getComName());
			map.put("Totalprice", auth.getTotalprice());
			asyncCommands.hmset("Shoppingcart:"+auth.getCartId(), map);			
		}	
	}
	
	@GetMapping("/cartdata")
    public String cart1(){
    	return "cart";
    }
	
	@GetMapping("forget")
    public String forget(){
    	return "forget";
    }
}