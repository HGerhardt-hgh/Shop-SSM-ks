package com.sise.dao;

import com.sise.pojo.Customer;
import org.apache.ibatis.annotations.Param;

import java.sql.SQLException;

/**
 * @author 黄桂豪
 * @date 2020-05-23 - 20:13
 */
public interface CustomerMapper {
    //检验用户登录
    public Customer queryCustomer(@Param(value = "user_number") String  user_number, @Param(value = "user_password")  String user_password);

    public Customer queryCustomerById(int user_id) ;
    public int insertCustomer(Customer customer);
    //判断是否修改用户操作是否成功
    public int updateCustomer(Customer customer) ;
}
