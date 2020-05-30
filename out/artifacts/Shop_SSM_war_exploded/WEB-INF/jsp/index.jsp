<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>悦享网 - 首页</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/gd-index-style.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/index-style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
</head>

<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>

	<div id="main" class="wrap">
		<div class="lefter">
			<div class="box">
				<h2>商品分类</h2>
				<dl>
					<dt>乐器</dt>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=钢琴">钢琴</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=竖笛">竖笛</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=吉他">吉他</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=古筝">古筝</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=琵琶">琵琶</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=二胡">二胡</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=竖笛">竖笛</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=小提琴">小提琴</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=大提琴">大提琴</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=萨克斯">萨克斯</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=尤克里里">尤克里里</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=箫">箫</a>
					</dd>



					<dt>书籍</dt>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=乐谱">乐谱</a>
					</dd>
					<dd>
						<a
							href="${pageContext.request.contextPath }/type?type=其他">其他</a>
					</dd>


				</dl>
			</div>
			<div class="spacer"></div>
			<%--<div class="last-view">--%>
				<%--<h2>最近浏览</h2>--%>
				<%--<dl class="clearfix">--%>
					<%--<dt>--%>
						<%--<img src="images/钢琴3.jpg" />--%>
					<%--</dt>--%>
					<%--<dd>--%>
						<%--<a href="product-view.html">钢琴</a>--%>
					<%--</dd>--%>
					<%--<dt>--%>
						<%--<img src="images/尤克里里3.jpg" />--%>
					<%--</dt>--%>
					<%--<dd>--%>
						<%--<a href="product-view.html">尤克里里</a>--%>
					<%--</dd>--%>
				<%--</dl>--%>
			<%--</div>--%>
		</div>
		<div class="main">
			<div>
				<div class="slideShow">
					<ul>
						<li><a href="type?type=钢琴"><img
								src="images/首页钢琴1.jpg" /></a></li>
						<!-- 	<li><a href="Shop.jsp"><img src="images/首页展示.jpg" /></a></li> -->
						<li><a href="type?type=小提琴"><img
								src="images/首页小提琴3.jpg" /></a></li>
						<li><a href="type?type=乐谱"><img
								src="images/首页乐谱4.jpg" /></a></li>
					</ul>
					<div class="showNav">
						<span class="active">1</span> <span>2</span> <span>3</span>
					</div>
				</div>
			</div>
			<div class="price-off">

				
			</div>

			<div class="spacer clear"></div>
			<div class="hot">
				<h2>本周热销商品</h2>
				<ul class="product clearfix">
					<c:forEach var="h" items="${listHot}" >
				
						<li>
							<dl align="center">
								<dt>
									<a href="pid?pid=${h.p_id}" target="_blank">
										<img src="${pageContext.request.contextPath }/${h.image1}" />
									</a>
								</dt>
								<dd class="title">
									<a href="ProductServlet?pid=${h.p_id}" target="_blank">${h.p_name}</a>
								</dd>
								<dd class="price">¥${h.p_price}元</dd>
							</dl>
						</li>
					</c:forEach>

				</ul>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="footer">Copyright &copy; 2019 webwebwww团队</div>
</body>
<script src="js/jquery-1.9.0.js"></script>
<script src="js/LunBo.js"></script>

</html>
