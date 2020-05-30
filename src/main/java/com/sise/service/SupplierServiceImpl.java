package com.sise.service;

import com.sise.dao.SupplierMapper;
import com.sise.pojo.Supplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * @author 黄桂豪
 * @date 2020-05-24 - 14:28
 */
@Service
public class SupplierServiceImpl implements SupplierService{
    @Autowired
    @Qualifier("supplierMapper")
    private SupplierMapper supplierMapper;


    public void setSupplierMapper(SupplierMapper supplierMapper) {
        this.supplierMapper = supplierMapper;
    }

    public int insertSupplier(Supplier supplier) {
        return supplierMapper.insertSupplier(supplier);
    }

    public int updateSupplier(Supplier supplier) {
        return supplierMapper.updateSupplier(supplier);
    }

    public Supplier querySupplier(String user_number, String user_password) {
        Supplier supplier = supplierMapper.querySupplier(user_number, user_password);
        return supplier;
    }

    public Supplier querySupplierById(int sup_id) {
        Supplier supplier = supplierMapper.querySupplierById(sup_id);
        return supplier;
    }
}
