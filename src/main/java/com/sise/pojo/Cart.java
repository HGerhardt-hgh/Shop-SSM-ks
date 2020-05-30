package com.sise.pojo;

import java.util.Date;

/**
 * @author 黄桂豪 2019年12月13日 订单实体类
 */
public class Cart {
	private int id;
	private int order_id;
	private int user_id;
	private int p_id;
	private String p_name;
	private double p_price;
	private double cost;
	private String user_name;
	private String user_phone;
	private String order_address;
	private int order_amount;
	private Date order_time;
	private String image;


	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public double getP_price() {
		return p_price;
	}

	public void setP_price(double p_price) {
		this.p_price = p_price;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getOrder_address() {
		return order_address;
	}

	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}

	public int getOrder_amount() {
		return order_amount;
	}

	public void setOrder_amount(int order_amount) {
		this.order_amount = order_amount;
	}

	public Date getOrder_time() {
		return order_time;
	}

	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}

	public Cart() {
		super();
	}

	public Cart(int order_id, int user_id, int p_id, String p_name, double p_price, double cost, String user_name,
                String user_phone, String order_address, int order_amount, Date order_time) {
		super();
		this.order_id = order_id;
		this.user_id = user_id;
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_price = p_price;
		this.cost = cost;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.order_address = order_address;
		this.order_amount = order_amount;
		this.order_time = order_time;
	}

	public Cart(int id, int order_id, int user_id, int p_id, String p_name, double p_price, double cost, String user_name, String user_phone, String order_address, int order_amount, Date order_time, String image) {
		this.id = id;
		this.order_id = order_id;
		this.user_id = user_id;
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_price = p_price;
		this.cost = cost;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.order_address = order_address;
		this.order_amount = order_amount;
		this.order_time = order_time;
		this.image = image;
	}
}
