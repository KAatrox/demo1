package com.example.controller;

import io.lettuce.core.RedisFuture;
import io.lettuce.core.api.async.RedisAsyncCommands;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.lettuce.RedisCli;
import com.example.mapper.DigitalmallMapper;
import com.example.model.Admin;
import com.example.model.Commodity;
import com.example.model.User;


@Controller
public class AdminControler {
	
	Logger logger = LoggerFactory.getLogger(AdminControler.class);

	
	@Autowired
	DigitalmallMapper mallMapper;
	
	@GetMapping("/admlogin")
    public String login(){
    	return "admlogin";
    }
	
	@GetMapping("/wanji")
    public String ferget1(){
    	return "admlogin";
    }
	
	@GetMapping("/admin/edit")
    public String edit(){
    	return "admin/edit";
    }
	
	@GetMapping("/admin/edit1")
    public String edit1(){
    	return "admin/edit1";
    }
	
	@GetMapping("/admin/add")
    public String add(){
    	return "admin/add";
    }
	
	
	@GetMapping("/admin/index")//商品列表页面(redis)
    public String index(Model model) throws Exception{
		logger.debug("----------runing.........-------------------");
		List<Commodity> Commoditys = null;
		Commoditys = readFromRedis_Com();
		if(Commoditys.size()==0){
			logger.debug("----------read from database-------------------");
			Commoditys =  mallMapper.findAllcommodity();
			writeToRedis_Com(Commoditys);
		}
		
		
		model.addAttribute("admingoods",mallMapper.findAllcommodity());

    	return "admin/index";
    }
	
	
	//查找用户
	@GetMapping(value="/admin/finduser")//用户列表页面(redis)
    public String finduser(Model model) throws Exception{
		logger.debug("----------runing.........-------------------");
		List<User> Users = null;
		Users = readFromRedis_User(User.class);
		if(Users.size()==0){
			logger.debug("----------read from database-------------------");
			Users =  mallMapper.finduser();
			writeToRedis_User(Users);
		}
			
		model.addAttribute("finduser",Users);

    	return "admin/finduser";
    }
	
	//删除用户
	@GetMapping("/admin/userdelete")
	public String user1delete(@RequestParam int id){
		    System.out.print(id);
			int i=mallMapper.deleteuser1(id);
			System.out.print(i);
	    	return "redirect:/admin/finduser";
	    }
	
	//添加商品
	@PostMapping("/admin/indextwo")
    public String indextwo(@RequestParam String comname,@RequestParam int comprice,
    		@RequestParam int comnum,@RequestParam String comcolor,@RequestParam MultipartFile file,
    		@RequestParam String comdes,
    		@RequestParam Date comdate,@RequestParam int comnew,@RequestParam int comclassid,
    		@RequestParam int comsalenum,
    		HttpServletRequest request)throws IllegalStateException, IOException{		
			String filenewname="";
			if(file.isEmpty()){ 
				System.out.println("文件未上传!");
				return "admin/add";
			}
			else{
        	//得到上传的文件名
			String fileName = file.getOriginalFilename();
			System.out.println("------file----------"+fileName);
			//得到服务器项目发布运行所在地址
			String path1 = request.getSession().getServletContext().getRealPath("/WEB-INF/themes/images")
					+File.separator;
			//  此处未使用UUID来生成唯一标识,用日期做为标识
			 filenewname = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date())+ fileName;
			 System.out.println("++++++++"+filenewname);
			String path = path1+ filenewname;
			//查看文件上传路径,方便查找
			System.out.println(path);
			//把文件上传至path的路径
			File localFile = new File(path);
			file.transferTo(localFile);
			/*imagenames.add(filenewname);*/
			}
		/*request.setAttribute("images", imagenames);
		 * return "showimage";
		 * 
		 * */
		Commodity com=new Commodity();
		DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd"); 
		com.setAddtime(format1.format(comdate));
		System.out.print(comname);
		com.setComName(comname);
		com.setComClassid(comclassid);
		com.setComPrice(comprice);
		com.setComColor(comcolor);
		com.setComNew(comnew);
		com.setComNum(comnum);
		com.setComSalenum(comsalenum);
		com.setComDes(comdes);
		com.setComColor(comcolor);
		String phname=StringUtils.substringBefore(filenewname,"."); 
		com.setComphoto(phname);
		int i=mallMapper.addcom(com);
		System.out.print(i);
		
		return "redirect:/admin/index";
    }

	
	//更新产品
	@PostMapping("/admin/indexupdate")
    public String indexupdate(@RequestParam int comid,@RequestParam String comname,@RequestParam int comprice,@RequestParam int comnum,@RequestParam String comcolor,@RequestParam String comphoto,@RequestParam String comdes,
    		@RequestParam int comnew,@RequestParam int comclassid,@RequestParam int comsalenum,@RequestParam Date comdate){
		Commodity com=new Commodity();
		DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");  
		com.setComId(comid);
		com.setComName(comname);
		com.setComClassid(comclassid);
		com.setComPrice(comprice);
		com.setComColor(comcolor);
		com.setComNew(comnew);
		com.setComNum(comnum);
		com.setComSalenum(comsalenum);
		com.setComDes(comdes);
		com.setComColor(comcolor);
		com.setComphoto(comphoto);
		com.setAddtime(format1.format(comdate));
		
		int i=mallMapper.updatecom(com);
		System.out.print(i);
		System.out.print(comid);
		System.out.print(format1.format(comdate));
    	return "redirect:/admin/index";
    }
	
	//删除商品
	@GetMapping("/admin/indexdelete")
    public String indexdelete(@RequestParam int id){

		int i=mallMapper.deletecom(id);
		System.out.print(i);
		
		return "redirect:/admin/index";
    }
	
	//拦截器和管理员登录验证
	@PostMapping(value="/doBacklogin")
	public String dologin(@RequestParam String username, 
			@RequestParam String password,
			HttpSession session){
		session.setAttribute("username", username);
		System.out.println(username + "  ---- " + password);
		Admin ad=mallMapper.Adlogin(username, password);
		if(ad!=null){
			return "redirect:/admin/index";
		}else{
			session.setAttribute("tip", "用户名或密码错误!");
			return "admlogin";
		}
	}
	
	//拦截器回传
	@GetMapping(value="/backlogin")
	public String adlogin(Model model){
		return "redirect:/admlogin";
	}
	
	private List<Commodity> readFromRedis_Com() throws Exception {		//商品列表页面
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
	
		final List<Commodity> Commoditys = new ArrayList();
		RedisFuture<List<String>> futureKeys = asyncCommands.keys("Commodity*");
		
		List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
		
		if(keys.size()==0) return Commoditys;
		
		for(String key: keys){
			RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
			Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
			Commodity Commodity = new Commodity(); 
			Commodity.setComPrice(Integer.valueOf(map.get("comPrice")));
			Commodity.setComId( Integer.valueOf(map.get("comid")) );
			Commodity.setComNum( Integer.valueOf(map.get("comnum")) );
			Commodity.setComClassid(Integer.valueOf(map.get("comClassid")));
			Commodity.setComName( map.get("comname") );
			Commoditys.add(Commodity);
		}
		logger.debug("----------read from redis-------------------");
		return Commoditys;
	}

	private void writeToRedis_Com(List<Commodity> Commoditys) {	//商品列表页面
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
		for(Commodity auth: Commoditys){
			Map<String, String> map = new HashMap();
			map.put("comid", String.valueOf(auth.getComId()));
			map.put("comClassid", String.valueOf(auth.getComClassid()));
			map.put("comPrice", String.valueOf(auth.getComPrice()));

			map.put("comnum", String.valueOf(auth.getComNum()));

			map.put("comname", auth.getComName());


			asyncCommands.hmset("Commodity:"+auth.getComId(), map);
			
		}
		
		
	}
	
	private List<User> readFromRedis_User(Object obj) throws Exception {	//用户列表页面
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
	
		final List<User> Users = new ArrayList();
		RedisFuture<List<String>> futureKeys = asyncCommands.keys("User*");
		
		List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
		
		if(keys.size()==0) return Users;
		
		System.out.println("class---------------"+obj.getClass().getSimpleName());
		for(String key: keys){
			RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
			Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
			User User = new User(); 
			User.setUserId(Integer.valueOf(map.get("userid")));
			User.setMoney(Double.valueOf(map.get("money")));
			User.setUserName( map.get("name"));
			User.setEmail(map.get("email"));
			Users.add(User);
		}
		logger.debug("----------read from redis-------------------");
		return Users;
	}

	private void writeToRedis_User(List<User> Users) {			//用户列表页面
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
		for(User auth: Users){
			Map<String, String> map = new HashMap();
			map.put("userid", String.valueOf(auth.getUserId()));
			map.put("money", String.valueOf(auth.getMoney()));
			map.put("name", auth.getUserName());
			map.put("email", auth.getEmail());
			asyncCommands.hmset("User:"+auth.getUserId(), map);
			
		}
		
		
	}
	

	
}
