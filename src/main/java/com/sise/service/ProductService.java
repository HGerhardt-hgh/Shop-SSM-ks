package com.sise.service;

import com.sise.pojo.Product;

import java.util.List;

/**
 * @author 黄桂豪
 * @date 2020-05-23 - 14:43
 */
public interface ProductService {
    // 判断商家添加（上架）商品是否成功
    public int inserProduct(Product product);

    // 判断商家删除（下架）商品是否成功
    public int deleteProduct(int p_id);

    // 判断商家修改商品信息是否成功
    public int updateProduct(Product product);

    // 根据商品的类型查询商品
    public List<Product> queryProductByType(String p_type);

    // 根据商品的id查询商品
    public Product queryProductById(int p_id);

    // 查询热销商品
    public List<Product> queryProductByIsHot();

    // 根据商家id查询商品
    public List<Product> queryProductBySid(int sup_id);

}
