package com.sise.service;

import com.sise.dao.OrderMapper;
import com.sise.pojo.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 黄桂豪
 * @date 2020-05-24 - 0:02
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    @Qualifier("orderMapper")
    private OrderMapper orderMapper;

    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    public List<Order> queryOrderByOid(int orders_id) {
        List<Order> orders = orderMapper.queryOrderByOid(orders_id);
        return orders;
    }

    public List<Order> queryOrderByUid(int user_id) {
        return orderMapper.queryOrderByUid(user_id);
    }

    public List<Order> queryOrderByPid(int p_id) {
        return orderMapper.queryOrderByPid(p_id);
    }

    public int insertOrder(Order order) {
        return orderMapper.insertOrder(order);
    }
}
