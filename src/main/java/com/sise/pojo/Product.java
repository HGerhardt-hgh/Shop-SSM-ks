package com.sise.pojo;

/**
 * @author 黄桂豪 2019年12月13日 商品实体类
 */
public class Product {
	private int p_id;
	private int sup_id;
	private String p_name;
	private String p_type;
	private double p_price;
	private int p_amount;
	private String p_description;
	private String image1;
	private String image2;

	public Product() {
		super();
	}

	public Product(int sup_id, String p_name, String p_type, double p_price, int p_amount, String p_description,
                   String image1, String image2) {
		super();
		this.sup_id = sup_id;
		this.p_name = p_name;
		this.p_type = p_type;
		this.p_price = p_price;
		this.p_amount = p_amount;
		this.p_description = p_description;
		this.image1 = image1;
		this.image2 = image2;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public int getSup_id() {
		return sup_id;
	}

	public void setSup_id(int sup_id) {
		this.sup_id = sup_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public double getP_price() {
		return p_price;
	}

	public void setP_price(double p_price) {
		this.p_price = p_price;
	}

	public int getP_amount() {
		return p_amount;
	}

	public void setP_amount(int p_amount) {
		this.p_amount = p_amount;
	}

	public String getP_description() {
		return p_description;
	}

	public void setP_description(String p_description) {
		this.p_description = p_description;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}


	public Product(int p_id, int sup_id, String p_name, String p_type, double p_price, int p_amount, String p_description, String image1, String image2) {
		this.p_id = p_id;
		this.sup_id = sup_id;
		this.p_name = p_name;
		this.p_type = p_type;
		this.p_price = p_price;
		this.p_amount = p_amount;
		this.p_description = p_description;
		this.image1 = image1;
		this.image2 = image2;
	}
}
