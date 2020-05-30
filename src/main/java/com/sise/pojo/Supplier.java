package com.sise.pojo;

import java.util.Date;

/**
 * @author 黄桂豪 2019年12月19日 商家实体类
 */
public class Supplier {
    private int sup_id;
    private String sup_name;
    private int sup_number;
    private String sup_password;
    private String sup_phone;
    private String sup_address;
    private String sup_email;
    private Date sup_registTime;
    private String sup_description;

    public int getSup_id() {
        return sup_id;
    }

    public void setSup_id(int sup_id) {
        this.sup_id = sup_id;
    }

    public String getSup_name() {
        return sup_name;
    }

    public void setSup_name(String sup_name) {
        this.sup_name = sup_name;
    }

    public int getSup_number() {
        return sup_number;
    }

    public void setSup_number(int sup_number) {
        this.sup_number = sup_number;
    }

    public String getSup_password() {
        return sup_password;
    }

    public void setSup_password(String sup_password) {
        this.sup_password = sup_password;
    }

    public String getSup_phone() {
        return sup_phone;
    }

    public void setSup_phone(String sup_phone) {
        this.sup_phone = sup_phone;
    }

    public String getSup_address() {
        return sup_address;
    }

    public void setSup_address(String sup_address) {
        this.sup_address = sup_address;
    }

    public String getSup_email() {
        return sup_email;
    }

    public void setSup_email(String sup_email) {
        this.sup_email = sup_email;
    }

    public Date getSup_registTime() {
        return sup_registTime;
    }

    public void setSup_registTime(Date sup_registTime) {
        this.sup_registTime = sup_registTime;
    }

    public String getSup_description() {
        return sup_description;
    }

    public void setSup_description(String sup_description) {
        this.sup_description = sup_description;
    }

    public Supplier() {
        super();
    }

    public Supplier(String sup_name, int sup_number, String sup_password, String sup_phone, String sup_address,
                    String sup_email, Date sup_registTime, String sup_description) {
        super();
        this.sup_name = sup_name;
        this.sup_number = sup_number;
        this.sup_password = sup_password;
        this.sup_phone = sup_phone;
        this.sup_address = sup_address;
        this.sup_email = sup_email;
        this.sup_registTime = sup_registTime;
        this.sup_description = sup_description;
    }

}
