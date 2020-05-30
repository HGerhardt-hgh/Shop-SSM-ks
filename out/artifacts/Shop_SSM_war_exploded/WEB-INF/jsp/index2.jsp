<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'Shopcar.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link type="text/css" rel="stylesheet" href="css/index-style.css" />
</head>

<body>
	<script>
		$(document).ready(function() {
	
			$("input[name='ck']").bind("click", function() {
				if ($(this).attr("checked")) {
					$(this).parent().parent().attr("bgcolor", "yellow");
				} else {
					$(this).parent().parent().removeAttr("bgcolor");
				}
	
			});
	
	
		});
	
		function delecttr(obj) {
			var tr = obj.parentNode.parentNode;
			tr.parentNode.removeChild(tr);
		}
	</script>
	<div id="header" class="wrap">

	<div class="help">
			欢迎你，${sessionScope.supplier.getSup_name() }! <a
				href="${pageContext.request.contextPath }/Logout2">注销</a>

		</div>
		<div id="childNav">
			<div class="wrap">
				<ul class="clearfix">
					<li><a
						href="${pageContext.request.contextPath }/index2">我的商品</a></li>
					<li><a
						href="${pageContext.request.contextPath }/order2">销售订单</a></li>
					<li><a
						href="${pageContext.request.contextPath }/login2">个人信息</a></li>
				</ul>
			</div>
		</div>
		<div id="register" class="wrap">
			<div class="Shopping-trolley">

				<div class="Shopping-trolley-tb">
					<center>
						<h2>
							<font color="red">${meg}</font>
						</h2>
						<form
							action="${pageContext.request.contextPath }/deleteProduct">
							<table border="1" cellspacing="0" id="tb1">
								<thead>
									<tr>
										<!-- <th>编号</th> -->
										<th>选择</th>
										<th>商品</th>
										<th>名称</th>
										<th>单价</th>
										<th>库存</th>
										<th>描述</th>
										<th colspan="2">操作</th>
									</tr>
								</thead>
								<c:forEach var="product" items="${products}">
									<tr>
										<td><input type='checkbox' name="p_id"
											value="${product.p_id }"></td>
										<td><img src="${pageContext.request.contextPath }/${ product.image1}" width='90px'
											higth='90px'></td>
										<td>${product.p_name}</td>
										<td>${product.p_price }</td>
										<td>${product.p_amount}</td>
										<td>${product.p_description }</td>
										<td><a
											href="${pageContext.request.contextPath }/updateProduct?pid=${product.p_id}">修改</a></td>
									</tr>
								</c:forEach>

							</table>
							<button type="submit" id="submit">删除</button>
							<a href="${pageContext.request.contextPath }/addProduct">
								<button type="button">添加</button>
							</a>
						</form>
					</center>

				</div>


			</div>

		</div>

		<div id="footer">Copyright &copy; 2019 webwebwww团队</div>
</body>

</html>
