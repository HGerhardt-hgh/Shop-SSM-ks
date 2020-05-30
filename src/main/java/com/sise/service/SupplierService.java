package com.sise.service;

import com.sise.dao.SupplierMapper;
import com.sise.pojo.Supplier;
import org.apache.ibatis.annotations.Param;

/**
 * @author 黄桂豪
 * @date 2020-05-24 - 14:27
 */
public interface SupplierService {
    // 判断商家是否注册成功
    public int insertSupplier(Supplier supplier) ;

    // 修改商家信息
    public int updateSupplier(Supplier supplier) ;

    // 用于用户登录判断
    public Supplier querySupplier(@Param("usernumber") String user_number, @Param("password") String user_password) ;

    // 根据商家id查询商家
    public Supplier querySupplierById(int sup_id) ;
}
