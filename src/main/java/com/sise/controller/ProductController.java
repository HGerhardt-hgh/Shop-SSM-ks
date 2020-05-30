package com.sise.controller;

import com.sise.dao.PhotoDao;
import com.sise.pojo.Product;
import com.sise.pojo.Supplier;
import com.sise.service.ProductService;
import org.apache.commons.fileupload.FileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 黄桂豪
 * @date 2020-05-23 - 15:11
 */
@Controller
//@RequestMapping("/product")
public class ProductController {
    @Autowired
    @Qualifier("productServiceImpl")
    private ProductService productService;

    @RequestMapping("/index")
    public String index(Model model) {
        List<Product> listHot = productService.queryProductByIsHot();
        model.addAttribute("listHot", listHot);
        return "index";
    }

    @RequestMapping("/type")
    public String type(Model model, @RequestParam(name = "type", required = false) String type) {
        List<Product> products = productService.queryProductByType(type);
        model.addAttribute("type",type);
        model.addAttribute("products", products);
        return "Shop";
    }

    @RequestMapping("/pid")
    public String pid(Model model, HttpServletRequest request,
                      @RequestParam(name = "pid") int pid) {
        Product product = productService.queryProductById(pid);
        model.addAttribute("product", product);

        request.getSession().setAttribute("type", product.getP_type());
//        request.getRequestDispatcher("Shop2.jsp").forward(request, response);
        return "Shop2";
    }

    @RequestMapping("/index2")
    public String index2(Model model, HttpSession session) {
        Supplier supplier = (Supplier) session.getAttribute("supplier");
        List<Product> products = productService.queryProductBySid(supplier.getSup_id());
        session.setAttribute("products", products);
//        request.getRequestDispatcher("index2.jsp").forward(request, response);;
        return "index2";
    }

    @RequestMapping("/addProduct")
    public String addProduct() {
        return "addProduct";
    }

    @RequestMapping("/addProductImpl")
    public String addProductImpl(Model model, HttpServletRequest request) throws UnsupportedEncodingException {
        List<String> list = new ArrayList<String>();
        String filename = PhotoDao.getPhotoNewName();
        ServletContext servletContext = null;
        servletContext = request.getSession().getServletContext();
        HttpSession session = request.getSession();
        Supplier supplier = (Supplier) session.getAttribute("supplier");
        // 数据库中存储格式:/webTest/imgs/***.jpg
        // 第一步:获取页面上上传的图片资源
        List<FileItem> items = PhotoDao.getRequsetFileItems(request, servletContext);
        boolean isLoadToSQL = false;
        for (FileItem item : items) {
            if (!item.isFormField()) {
                // 判断后缀名是否是jpg
                if (PhotoDao.isGif(item)) {
                    isLoadToSQL = PhotoDao.saveFile(item, filename);
                } else {
                    System.out.println("后缀格式有误，保存文件失败");
                }
            } else {
                list.add(item.getString("UTF-8"));
            }
        }
        // 存在数据库里面的照片路径是在项目里的相对路径
        // String finalPhotoName= request.getContextPath()+"/images/"+filename;
        String finalPhotoName = "images/" + filename;
        Product product = new Product();
        product.setP_name(list.get(0));
        product.setP_type(list.get(1));
        product.setP_price(Integer.parseInt(list.get(2)));
        product.setP_amount(Integer.parseInt(list.get(3)));
        product.setP_description(list.get(4));
        product.setImage1(finalPhotoName);
        product.setSup_id(supplier.getSup_id());
        int result;
        result = productService.inserProduct(product);
        if (result == 1) {
            return "redirect:/index2";
        } else {
            return "addProduct";
        }
    }

    @RequestMapping("updateProduct")
    public String updateProduct(Model model, HttpSession session, @RequestParam("pid") int pid) {
        Supplier supplier = (Supplier) session.getAttribute("supplier");
        Product product = productService.queryProductById(pid);
        model.addAttribute("product", product);
        model.addAttribute("supplier", supplier);
//    request.getRequestDispatcher("UpdateProduct.jsp").forward(request, response);
        return "UpdateProduct";
    }

    @RequestMapping("updateProductImpl")
    public String updateProductImpl(Model model, HttpSession session,
                                    @RequestParam("p_id") int p_id, @RequestParam("p_name") String p_name,
                                    @RequestParam("p_type") String p_type, @RequestParam("p_price") double p_price,
                                    @RequestParam("p_amount") int p_amount, @RequestParam("p_description") String p_description) {

        Supplier supplier = (Supplier) session.getAttribute("supplier");
        Product product = new Product();
        product.setP_name(p_name);
        product.setP_type(p_type);
        product.setP_price(p_price);
        product.setP_amount(p_amount);
        product.setP_description(p_description);
        product.setSup_id(supplier.getSup_id());
        product.setP_id(p_id);
        int result;
        result = productService.updateProduct(product);
        if (result == 1) {
            model.addAttribute("meg", "修改成功");
//                request.getRequestDispatcher("ProductServlet2").forward(request, response);
            return "redirect:/index2";
        } else {
            model.addAttribute("meg", "修改失败");
//                request.getRequestDispatcher("ProductServlet?pid=" + p_id).forward(request, response);
            return "updateProduct";
        }
    }

    @RequestMapping("deleteProduct")
    public String deleteProduct(Model model, HttpSession session, @RequestParam("p_id") String[] p_ids) {
        if (p_ids != null) {
            for (int i = 0; i < p_ids.length; i++) {
                int p_id = Integer.parseInt(p_ids[i]);
                int result = productService.deleteProduct(p_id);
                if (result > 0) {
//						session.setAttribute("meg", "删除成功");
//                        request.getRequestDispatcher("ProductServlet2").forward(request, response);
                    return "redirect:/index2";
                } else {
//						session.setAttribute("meg", "删除失败");
                    // 请求转发到result_order.jsp
//                        request.getRequestDispatcher("ProductServlet2").forward(request, response);
                    return "redirect:/index2";
                }
            }
        } else {
            session.setAttribute("deleteMeg", "请选择商品");
//            request.getRequestDispatcher("ProductServlet2").forward(request, response);
            return "redirect:/index2";
        }
        return "redirect:/index2";
    }

}