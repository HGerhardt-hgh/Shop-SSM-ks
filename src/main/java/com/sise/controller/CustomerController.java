package com.sise.controller;

import com.sise.pojo.Customer;
import com.sise.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 黄桂豪
 * @date 2020-05-23 - 19:50
 */
@Controller
public class CustomerController {
    @Autowired
    @Qualifier("customerServiceImpl")
    private CustomerService customerService;

    @RequestMapping("/login")
    public String login(HttpSession session) {
//        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");
        if (customer != null) {
            return "UpdateCustomer";
        } else {
            return "login";
        }
    }

    @RequestMapping("/Login")
    public String Login(Model model, HttpSession session,
                        @RequestParam("username") String username,
                        @RequestParam("password") String password) {
        if (username != null && password != null && !username.equals("") && !password.equals("")) {
            Customer customer = customerService.queryCustomer(username, password);
            if (customer == null) {
//                request.setAttribute("loginmeg", "账号或密码不正确");
                model.addAttribute("loginmeg", "账号或密码不正确");
                return "login";
            } else {
//                request.setAttribute("loginmeg", null);
                model.addAttribute("loginmeg", null);
//                request.getSession().setAttribute("customer", customer);// 将customer存在session中
                session.setAttribute("customer", customer);
                return "redirect:/index";
            }
        } else {
//            request.setAttribute("密loginmeg", "请输入账号码");
            model.addAttribute("密loginmeg", "请输入账号码");
            return "login";

        }
    }

    @RequestMapping("/Logout")
    public String logout(HttpSession session) {
//        request.getSession().removeAttribute("customer");
        session.removeAttribute("customer");
        return "redirect:/index";
    }
    @RequestMapping("/UpdateCustomer")
    public String UpdateCustomer(HttpServletRequest request,@RequestParam("user_id") int user_id,
                                 @RequestParam("user_name") String user_name,@RequestParam("user_phone") String user_phone ,
                                 @RequestParam("user_address") String user_address,@RequestParam("user_Email") String user_Email ) {
//        int userid = Integer.parseInt(user_id);
        Customer customer = new Customer();
        customer.setUser_id(user_id);
        customer.setUser_name(user_name);
        customer.setUser_phone(user_phone);
        customer.setUser_address(user_address);
        customer.setUser_Email(user_Email);
        int result;
            result = customerService.updateCustomer(customer);
            if(result>0) {
                customer=customerService.queryCustomerById(user_id);
                request.getSession().setAttribute("customer", customer);
                request.setAttribute("meg", "修改成功");
//                request.getRequestDispatcher("UpdateCustomer.jsp").forward(request, response);;
                return "UpdateCustomer";
            }else {
                request.setAttribute("meg", "修改失败");
//                request.getRequestDispatcher("UpdateCustomer.jsp").forward(request, response);
                return "UpdateCustomer";
            }
    }

    @RequestMapping("/register")
    public String register(HttpSession session) {
        return "register";
    }
    @RequestMapping("/Register")
    public String Register(HttpSession session,@RequestParam("user_name") String user_name,
                           @RequestParam("user_sex") String user_sex,@RequestParam("User_phone") String User_phone,
                           @RequestParam("user_number") int user_number, @RequestParam("password") String password,
                           @RequestParam("user_adress") String user_adress,
                           @RequestParam("user_email") String user_email) {
        Date user_registtime = new Date();
        SimpleDateFormat temp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
        String Date = temp.format(user_registtime);
        Customer customer = new Customer(user_name, user_sex, User_phone, user_number, password, user_adress,
                user_email, user_registtime);
        int result;
            result = customerService.insertCustomer(customer);
            if (result!=1) {
//                request.getRequestDispatcher("register.jsp").forward(request, response);
            return  "register";
            } else {
//                response.sendRedirect("login.jsp");
                return "redirect:/login";
            }
    }
}
