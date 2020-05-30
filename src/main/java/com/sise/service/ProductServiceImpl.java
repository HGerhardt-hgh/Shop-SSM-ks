package com.sise.service;

import com.sise.dao.ProductMapper;
import com.sise.pojo.Product;

import java.util.List;

/**
 * @author 黄桂豪
 * @date 2020-05-23 - 14:44
 */
public class ProductServiceImpl implements ProductService {

    private ProductMapper productMapper;

    public void setProductMapper(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }

    public int inserProduct(Product product) {
        return productMapper.inserProduct(product);
    }

    public int deleteProduct(int p_id) {
        return productMapper.deleteProduct(p_id);
    }

    public int updateProduct(Product product) {
        return productMapper.updateProduct(product);
    }

    public List<Product> queryProductByType(String p_type) {
        return productMapper.queryProductByType(p_type);
    }

    public Product queryProductById(int p_id) {
        return productMapper.queryProductById(p_id);
    }

    public List<Product> queryProductByIsHot() {
        return productMapper.queryProductByIsHot();
    }

    public List<Product> queryProductBySid(int sup_id) {
        return productMapper.queryProductBySid(sup_id);
    }
}
