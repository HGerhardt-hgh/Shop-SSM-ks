package com.sise.pojo;

import java.util.Date;

/**
 * @author 黄桂豪 2019年12月12日 客户实体类
 */
public class Customer {
	private int user_id;
	private String user_name;
	private String user_sex;
	private String user_phone;
	private int user_number;
	private String user_password;
	private String user_address;
	private String user_Email;
	private Date user_registtime;

	public Customer() {
		super();
	}

	public Customer(String user_name, String user_sex, String user_phone, int user_number, String user_password,
			String user_address, String user_Email, Date user_registtime) {
		super();
		this.user_name = user_name;
		this.user_sex = user_sex;
		this.user_phone = user_phone;
		this.user_number = user_number;
		this.user_password = user_password;
		this.user_address = user_address;
		this.user_Email = user_Email;
		this.user_registtime = user_registtime;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public int getUser_number() {
		return user_number;
	}

	public void setUser_number(int user_number) {
		this.user_number = user_number;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_Email() {
		return user_Email;
	}

	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}

	public Date getUser_registtime() {
		return user_registtime;
	}

	public void setUser_registtime(Date user_registtime) {
		this.user_registtime = user_registtime;
	}

}
