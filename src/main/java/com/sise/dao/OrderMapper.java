package com.sise.dao;

import com.sise.pojo.Order;

import java.sql.SQLException;
import java.util.List;

/**
 * @author 黄桂豪
 * @date 2020-05-23 - 23:53
 */
public interface OrderMapper {
    // 根据订单号查询订单，返回对象
    public List<Order> queryOrderByOid(int orders_id) ;

    // 根据用户id查询订单，返回对象
    public List<Order> queryOrderByUid(int user_id) ;

    // 根据商品id查询订单，返回对象
    public List<Order> queryOrderByPid(int p_id);

    // 判断添加订单记录是否成功
    public int insertOrder(Order order) ;
}
