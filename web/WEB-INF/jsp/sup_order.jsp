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
		
				<form action="${pageContext.request.contextPath }/queryOrder2">
					输入订单号:<input type='text' name='oid' style="text-align:left;">
					<button id="submit" type="submit">查询</button>
					</a>
				</form>

				<div class="Shopping-trolley-tb">
					<center>
						<c:choose>
							<c:when test="${empty supOrderList}">
								<h2>找不到该订单的记录，请重新查询</h2>
							</c:when>
							<c:otherwise>
								<table border="1" cellspacing="0" id="tb1">
									<thead>
										<tr>
											<!-- <th>全选 <input type="checkbox" id="ckAll" /></th> -->
											<th>订单编号：</th>
											<th>商品名称</th>
											<th>单价</th>
											<th>数量</th>
											<th>花费</th>
											<th>收货人姓名</th>
											<th>收货人手机号码</th>
											<th>收货地址</th>
											<th>下单时间</th>
										</tr>
									</thead>
									<c:set value="0" var="sum" />
									<c:forEach var="order" items="${ supOrderList}">
										<c:set value="${sum +order.cost}" var="sum" />
										<tr>
											<td>${order.order_id}</td>
											<td>${order.p_name}</td>
											<td>${order.p_price }</td>
											<td>${order.order_amount }</td>
											<td>${order.cost}</td>
											<td>${order.user_name}</td>
											<td>${order.user_phone}</td>
											<td>${order.order_address}</td>
											<td>${order.order_time}</td>
										</tr>


									</c:forEach>

									</tbody>

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
				<div class="Shopping-trolley-bt2">
					<%-- 	<center>
						<a href="${pageContext.request.contextPath }/index.jsp">
							<button id="submit" type="button">继续购物</button>
						</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</center> --%>
				</div>

			</div>

		</div>
		<div>
			<center>
				<a href="${pageContext.request.contextPath }/index2"><font
					color="purple"><h3>返回主页</h3></font></a>
			</center>
		</div>
		<div id="footer">Copyright &copy; 2019 webwebwww团队</div>
</body>

</html>
