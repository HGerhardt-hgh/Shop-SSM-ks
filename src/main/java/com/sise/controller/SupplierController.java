package com.sise.controller;

import com.sise.pojo.Product;
import com.sise.pojo.Supplier;
import com.sise.service.ProductService;
import com.sise.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author 黄桂豪
 * @date 2020-05-24 - 14:18
 */
@Controller
public class SupplierController {
    @Autowired
    @Qualifier("supplierServiceImpl")
    private SupplierService supplierService;
    @Autowired
    @Qualifier("productServiceImpl")
    private ProductService productService;

    @RequestMapping("/login2")
    public String login(HttpSession session) {
//        HttpSession session = request.getSession();
        Supplier supplier = (Supplier) session.getAttribute("supplier");
        if (supplier != null) {
            return "UpdateSupplier";
        } else {
            return "login2";
        }
    }

    @RequestMapping("/Login2")
    public String Login2(Model model, HttpSession session,
                        @RequestParam("username") String user_name,
                        @RequestParam("password") String password) {
        if (user_name != null && password != null && !user_name.equals("") && !password.equals("")) {
            Supplier supplier = supplierService.querySupplier(user_name, password);
            System.out.println("user_name:" + user_name);
            System.out.println("password:" + password);
            if (supplier == null) {
                System.out.println("  =========   null   ===========");
                model.addAttribute("loginmeg", "商家账号或密码不正确");
//                    request.getRequestDispatcher("login2.jsp").forward(request, response);
                return "login2";
            } else {
                System.out.println("  ===   = = = = = = = = = = = = ==  ");
                session.setAttribute("supplier", supplier);// 将supplier存在session中
                model.addAttribute("loginmeg", null);
                List<Product> products = productService.queryProductBySid(supplier.getSup_id());
                model.addAttribute("products",products);
//                    request.getRequestDispatcher("ProductServlet2").forward(request, response);
                return "index2";
            }

        } else {
            model.addAttribute("loginmeg", "请输入账号密码");
//            request.getRequestDispatcher("login2.jsp").forward(request, response);
            return "login2";
        }
    }

    @RequestMapping("/Logout2")
    public String logout(HttpSession session) {
//        request.getSession().removeAttribute("customer");
        session.removeAttribute("supplier");
        return "redirect:/index";
    }

    @RequestMapping("/register2")
    public String register(HttpSession session) {
        return "register2";
    }

    @RequestMapping("/Register2")
    public String Register(HttpSession session, @RequestParam("sup_name") String sup_name, @RequestParam("password") String password,
                           @RequestParam("sup_phone") String sup_phone, @RequestParam("sup_number") int sup_number,
                           @RequestParam("sup_adress") String sup_adress, @RequestParam("sup_email") String sup_email,
                           @RequestParam("sup_description") String sup_description) {

        Date sup_registtime = new Date();
        SimpleDateFormat temp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
        String Date = temp.format(sup_registtime);

        Supplier supplier = new Supplier(sup_name, sup_number, password, sup_phone, sup_adress, sup_email,
                sup_registtime, sup_description);
        int result;
        result = supplierService.insertSupplier(supplier);
        if (result != 1) {
            return "register2";
        } else {
            return "redirect:/login2";
        }
    }
    @RequestMapping("/updateSupplier")
    public String updateSupplier(HttpServletRequest request, @RequestParam("sup_id") int sup_id,
                                 @RequestParam("sup_name") String sup_name, @RequestParam("sup_phone") String sup_phone ,
                                 @RequestParam("sup_address") String sup_address, @RequestParam("sup_email") String sup_email , @RequestParam("sup_description") String sup_description ) {
        Supplier supplier = new Supplier();
        supplier.setSup_id(sup_id);
        supplier.setSup_name(sup_name);
        supplier.setSup_phone(sup_phone);
        supplier.setSup_address(sup_address);
        supplier.setSup_email(sup_email);
        supplier.setSup_description(sup_description);
        int result;
            result = supplierService.updateSupplier(supplier);
            if(result==1) {
                supplier=supplierService.querySupplierById(sup_id);
                request.getSession().setAttribute("supplier", supplier);
                request.setAttribute("meg", "修改成功");
                return "UpdateSupplier";
            }else {
                request.setAttribute("meg", "修改失败");
                return "UpdateSupplier";
            }
    }
}
