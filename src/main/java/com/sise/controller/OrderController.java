package com.sise.controller;

import com.sise.pojo.Customer;
import com.sise.pojo.Order;
import com.sise.pojo.Product;
import com.sise.pojo.Supplier;
import com.sise.service.OrderService;
import com.sise.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author 黄桂豪
 * @date 2020-05-23 - 15:11
 */
@Controller
public class OrderController {
    @Autowired
    @Qualifier("orderServiceImpl")
    private OrderService orderService;
    @Autowired
    @Qualifier("productServiceImpl")
    private ProductService productService;


    @RequestMapping("/order")
    public String index(Model model, HttpSession session) {
        Customer customer = (Customer) session.getAttribute("customer");
        if (customer != null) {
            int userId = customer.getUser_id();
            List<Order> customerOrder = orderService.queryOrderByUid(userId);
//            session.setAttribute("customerOrder", customerOrder);
            model.addAttribute("customerOrder", customerOrder);
            return "success_order";
        } else {
            return "index";
        }
    }

    @RequestMapping("/queryOrder")
    public String queryOrder(Model model, @RequestParam(name = "oid", required = false) String order_id) {
        if (order_id.equals(""))
        // 根据用户id查询出订单集合
        {
            return "success_order";
        }else {
            int orderid = Integer.parseInt(order_id);
            List<Order> customerOrder = orderService.queryOrderByOid(orderid);
            // 将订单记录集合存放到会话中
            model.addAttribute("customerOrder", customerOrder);
            // 请求转发到result_order.jsp
//            request.getRequestDispatcher("/success_order.jsp").forward(request, response);
            return "success_order";
        }
    }


    @RequestMapping("/buy")
    public String buy(Model model, HttpSession session,
                      @RequestParam(value = "p_id", required = false) String[] p_ids,
                      @RequestParam(value = "quanty", required = false) String[] quanties,
                      @RequestParam(value = "type", required = false) String[] type) {
        System.out.println("==============  type: =======" + type);
        if (p_ids != null) {
            Date date = new Date();
            SimpleDateFormat temp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
            String Date = temp.format(date);
            int order_id = (int) new Date().getTime();
            Customer customer = (Customer) session.getAttribute("customer");
            for (int i = 0; i < p_ids.length; i++) {
                int p_id = Integer.parseInt(p_ids[i]);
                int quanty = Integer.parseInt(quanties[i]);
                Product product = productService.queryProductById(p_id);
                product.setP_amount(product.getP_amount() - quanty);// 商品数量减少
                if (productService.updateProduct(product) != 0) {
                    // 生成订单记录
                    Order order = new Order();
                    order.setOrder_id(order_id);
                    order.setUser_id(customer.getUser_id());
                    order.setP_id(p_id);
                    order.setP_name(product.getP_name());
                    order.setP_price(product.getP_price());
                    order.setUser_name(customer.getUser_name());
                    order.setUser_phone(customer.getUser_phone());
                    order.setCost(product.getP_price() * quanty);
                    order.setOrder_address(customer.getUser_address());
                    order.setImage(product.getImage1());
                    order.setOrder_amount(quanty);
                    order.setOrder_time(date);
                    orderService.insertOrder(order);
                }
            }

            // 根据订单id查询出订单集合
            List<Order> customerOrder = orderService.queryOrderByOid(order_id);
            for (Order order : customerOrder) {
                Date date1 = new Date(String.valueOf(order.getOrder_time()));
                order.setOrder_time(date1);
            }
            // 将订单记录集合存放到会话中
            session.setAttribute("customerOrder", customerOrder);
            session.setAttribute("buymeg", null);
            // 请求转发到result_order.jsp
//                request.getRequestDispatcher("/success_order.jsp").forward(request, response);
            return "success_order";
        } else {
            model.addAttribute("buymeg", "请选择商品");
            model.addAttribute("type",type);
//                request.getRequestDispatcher("ProductServlet?type=" + type).forward(request, response);
            System.out.println("redirect:/type?type=" + type);
            return "redirect:/type";
//            return "redirect:/index";
        }
    }

    @RequestMapping("/order2")
    public String order2(Model model, HttpSession session) {
        Supplier supplier = (Supplier) session.getAttribute("supplier");
        List<Product> products = productService.queryProductBySid(supplier.getSup_id());
        List<Order> supOrderList = new ArrayList<Order>();
        if (products != null) {
            for (Product product : products) {
                List<Order> supOrder = orderService.queryOrderByPid(product.getP_id());
                for (Order order : supOrder) {
                    if (order != null) {
                        supOrderList.add(order);
                    }
                }
            }
//            session.setAttribute("supOrderList", supOrderList);
            // 请求转发到result_order.jsp
            model.addAttribute("supOrderList", supOrderList);
//                request.getRequestDispatcher("/sup_order.jsp").forward(request, response);
            return "sup_order";
        } else {
            model.addAttribute("msg", "没有订单信息");
            return "sup_order";
        }
    }

    @RequestMapping("/queryOrder2")
    public String queryOrder2(Model model, @RequestParam("oid") int order_id) {
        // 根据用户id查询出订单集合
        List<Order> supOrderList = orderService.queryOrderByOid(order_id);
        // 将订单记录集合存放到会话中
        model.addAttribute("supOrderList", supOrderList);
        // 请求转发到result_order.jsp
        return "sup_order";
    }
}