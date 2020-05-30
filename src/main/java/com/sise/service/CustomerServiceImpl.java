package com.sise.service;

import com.sise.dao.CustomerMapper;
import com.sise.pojo.Customer;

/**
 * @author 黄桂豪
 * @date 2020-05-23 - 20:35
 */
public class CustomerServiceImpl implements CustomerService {

    private CustomerMapper customerMapper;

    public void setCustomerMapper(CustomerMapper customerMapper) {
        this.customerMapper = customerMapper;
    }

    public Customer queryCustomer(String user_number, String user_password) {
        Customer customer = customerMapper.queryCustomer(user_number, user_password);
        return customer;
    }

    public Customer queryCustomerById(int user_id) {
        Customer customer = customerMapper.queryCustomerById(user_id);
        return customer;
    }

    public int insertCustomer(Customer customer) {
        return customerMapper.insertCustomer(customer);
    }

    public int updateCustomer(Customer customer) {
        return customerMapper.updateCustomer(customer);
    }
}
