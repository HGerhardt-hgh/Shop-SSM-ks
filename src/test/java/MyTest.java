import com.sise.dao.ProductMapper;
import com.sise.pojo.Customer;
import com.sise.pojo.Order;
import com.sise.pojo.Product;
import com.sise.service.CustomerService;
import com.sise.service.OrderService;
import com.sise.service.ProductService;
import com.sise.service.ProductServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author 黄桂豪
 * @date 2020-05-23 - 15:28
 */
public class MyTest {
@Test
    public void test(){
    ApplicationContext context = new ClassPathXmlApplicationContext("applicationcontext.xml");
    ProductService producTServiceImpl = (ProductService) context.getBean("productServiceImpl");
    List<Product> products = producTServiceImpl.queryProductByIsHot();
    for (Product product : products) {
        System.out.println(product);
    }
    System.out.println("================================");
    CustomerService customerServiceImpl = (CustomerService) context.getBean("customerServiceImpl");
    Customer customer = customerServiceImpl.queryCustomer("1", "1");
//    Customer customer = customerServiceImpl.queryCustomerById(1);
    System.out.println(customer.toString());
    System.out.println("===============================");
    OrderService orderServiceImpl = (OrderService) context.getBean("orderServiceImpl");
    List<Order> orders = orderServiceImpl.queryOrderByUid(1);
    for (Order order : orders) {
        System.out.println(order.toString());
    }
}
}
