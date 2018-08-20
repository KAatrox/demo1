package com.example.mapper;

import java.util.List;

import com.example.model.Admin;
import com.example.model.Commodity;
import com.example.model.Message;
import com.example.model.Shoppingcart;
import com.example.model.User;
import com.example.model.UserOrder;
import com.example.model.helpinfo;



public interface DigitalmallMapper {
	User login(String username,String userpwd);//登录查询
	Admin admlogin(String name,String pwd);//管理员登录查询
	int sign(User user);					   // 注册操作
	List<User> ckname(String username);			//验证用户名是否符合（重复和其他约束）
	List<User> ckemail(String email);			//验证邮箱是否存在
	int updatepwd(String pwd,String email);				//根据邮箱更改密码
	User findid(String username);					//根据用户名查ID
	int message(Message message);             //留言信息添加(联系我们)
	List<UserOrder> addorder(String username);	//订单生成
	List<UserOrder> myorder(String username);	//查看订单
	List<UserOrder>	seorder(int userid,String condition);//搜索订单
	List<User> wallet(String username);			//钱包
	List<Commodity> findAllcommodity();//查询所有商品
	List<Commodity> searchcommodity(String search);//查询商品
	List<Commodity> headsearchcommodity(String type);//类型查询商品
	List<helpinfo> seachhelpinfo(String search);//查询解决方案
	int cartadd(Shoppingcart cart);	//购物车
	int cartnum(Shoppingcart cart);	//购物车数量加
	List<Shoppingcart> showcart(String username); //根据用户名查询购物车数据
	Shoppingcart findcom(String comid);	//根据商品Id查询购物车
	int	removecart(int comid);//移除购物车内单个商品
	int cartempty(String username);// 清空购物车
	
	Admin Adlogin(String username,String password);//管理员登录查询
	int addcom(Commodity com);//后台添加新产品
	int updatecom(Commodity com);//后台更新新产品
	int deletecom(int id);//后台删除产品
	List<User> finduser();//后台查找用户
	int deleteuser1(int id);//后台删除用户
	int addmoney(int id,int price);//充值操作
}
