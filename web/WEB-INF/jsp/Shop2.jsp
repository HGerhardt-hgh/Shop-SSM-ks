<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

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
	</script>
	<div id="header">
		<%@ include file="header.jsp" %>
	</div>
	<div id="register" class="wrap">
		<div class="Shopping-trolley">
			<div class="Shopping-trolley-bt">
				<center>
					当前位置>><a href="#">商品浏览</a>
				</center>
			</div>


			<div class="Shopping-trolley-tb">
				<center>
					<c:choose>
						<c:when test="${empty product}">
 							抱歉，目前没有该类商品
 						</c:when>
						<c:otherwise>

							<c:set value="${type }" var="type" scope="request" />
							<form
								action="${pageContext.request.contextPath }/buy?typr=${type}">
								<!-- 放商品表格 -->
								<h4>${buymeg }</h4>
								<table border="1" cellspacing="0" id="tb1" align="center">
									<thead>
										<tr>
											<!-- <th>编号</th> -->
											<th>商品</th>
											<th>名称</th>
											<th>单价</th>
											<th>库存</th>
											<th>描述</th>
											<th colspan="2">操作</th>
										</tr>
									</thead>

									<tr>
										<td><img src="${pageContext.request.contextPath }/${ product.image1 }" width='90px' higth='90px'></td>
										<td>${product.p_name}</td>
										<td>${product.p_price }</td>
										<td>${product.p_amount}</td>
										<td>${product.p_description }</td>
										<td><input type='number' name='quanty'  value="1" size="5"
											style="text-align:right;" maxlength='3'></td>
										<td><input type='checkbox' name="p_id"
											value="${product.p_id }"></td>

									</tr>
									
								</table>
								<button id="submit" type="submit">立即购买</button>
								<br />
							</form>
						</c:otherwise>
					</c:choose>
				</center>

			</div>

		</div>

	</div>
	<div>
		<center>
			<a href="${pageContext.request.contextPath }/index"><font
				color="purple"><h3>返回主页</h3></font></a>
		</center>
	</div>
	<div id="footer">Copyright &copy; 2019 webwebwww团队</div>
</body>

</html>
