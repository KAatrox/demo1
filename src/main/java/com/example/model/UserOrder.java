package com.example.model;

import java.util.Date;

public class UserOrder {
	private int OrderId;
	private int OrderUser;
	private int OrderComId;
	private int OrderComNm;
	private Date Ordertime;
	private String OrderRemark;
	private String comName;
	private String OrderPri;
	
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public int getOrderId() {
		return OrderId;
	}
	public void setOrderId(int orderId) {
		OrderId = orderId;
	}
	public int getOrderUser() {
		return OrderUser;
	}
	public void setOrderUser(int orderUser) {
		OrderUser = orderUser;
	}
	public int getOrderComId() {
		return OrderComId;
	}
	public void setOrderComId(int orderComId) {
		OrderComId = orderComId;
	}
	public int getOrderComNm() {
		return OrderComNm;
	}
	public void setOrderComNm(int orderComNm) {
		OrderComNm = orderComNm;
	}
	public Date getOrdertime() {
		return Ordertime;
	}
	public void setOrdertime(Date ordertime) {
		Ordertime = ordertime;
	}
	public String getOrderRemark() {
		return OrderRemark;
	}
	public void setOrderRemark(String orderRemark) {
		OrderRemark = orderRemark;
	}
	public String getOrderPri() {
		return OrderPri;
	}
	public void setOrderPri(String orderPri) {
		OrderPri = orderPri;
	}
	
}
