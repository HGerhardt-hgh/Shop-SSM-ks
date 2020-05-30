package com.sise.filter;


import com.sise.pojo.Customer;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


/**
 * @author 黄桂豪
 *2019年12月12日
 *进行身份认证,当用户为登陆时,不可购买物品以及查看订单
 */
public class LoginFilter implements Filter {


	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		HttpSession httpSession = request.getSession();
		Customer customer =   (Customer) httpSession.getAttribute("customer");
		
		if (customer!=null) {
			chain.doFilter(request, response);
		}else {
			request.getRequestDispatcher("WEB-INF/jsp/login.jsp").forward(request, response);
		}
	}

	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
