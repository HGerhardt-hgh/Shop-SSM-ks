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

<div id="header">
<%@ include file="header.jsp" %>
</div>
	<div id="register" class="wrap">
		<div class="Shopping">
			<form action="${pageContext.request.contextPath }/queryOrder">
				输入订单号:<input type='text' name='oid' style="text-align:left;">
				<button id="submit" type="submit">查询</button>
			</form>

			<div class="Shopping-trolley-tb">
				<center>
					<c:choose>
						<c:when test="${empty customerOrder}">
							<h2>找不到该订单的记录，请重新查询</h2>
						</c:when>
						<c:otherwise>
							<table border="1" cellspacing="0" id="tb1">
								<thead>
									<tr>
										<!-- <th>全选 <input type="checkbox" id="ckAll" /></th> -->
										<th >订单编号：</th>
										<th >商品图片：</th>
										<th >商品名称</th>
										<th >单价</th>
										<th >数量</th>
										<%--<th width="100px">花费</th>--%>
										<th>收货人姓名</th>
										<th >收货人手机号码</th>
										<th>收货地址</th>
										<th>下单时间</th>
									</tr>
								</thead>
								<c:set value="0" var="sum" />
								<c:forEach var="order" items="${ customerOrder}">
									<c:set value="${sum +order.cost}" var="sum" />
									<tr>
										<td>${order.order_id}</td>
										<td><img src="${pageContext.request.contextPath }/${order.image}" ></td>
										<td>${order.p_name}</td>
										<td>${order.p_price }</td>
										<td>${order.order_amount }</td>
										<%--<td>${order.cost}</td>--%>
										<td>${order.user_name}</td>
										<td>${order.user_phone}</td>
										<td>${order.order_address}</td>
										<td >${order.order_time}</td>
									</tr>
                                    <tr>
                                        <td colspan="8" align="right">订单金额：</td>
                                        <td>${order.cost} </td>
                                    </tr>
								</c:forEach>



								<tfoot>
									<tr>
										<td colspan="8" align="right">共消费:</td>
										<td>${sum }</td>
									</tr>
								</tfoot>

							</table>
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
