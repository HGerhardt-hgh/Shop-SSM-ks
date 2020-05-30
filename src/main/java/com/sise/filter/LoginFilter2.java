package com.sise.filter;

import com.sise.pojo.Supplier;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


/**
 * @author 黄桂豪
 *2019年12月12日
 *进行身份认证,当商家未登陆时查看自己商品信息
 */
public class LoginFilter2 implements Filter {


	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		HttpSession httpSession = request.getSession();
		Supplier supplier =   (Supplier) httpSession.getAttribute("supplier");
		
		if (supplier!=null) {
			chain.doFilter(request, response);
		}else {
			request.getRequestDispatcher("login2.jsp").forward(request, response);;
		}
	}

	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
