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
	
	<div id="header" class="wrap">
		<!-- <div id="logo">
			<img src="images/logo.gif" />
		</div> -->
		<div class="help">

			</a> 欢迎你，${supplier.getSup_name() }! <a
				href="${pageContext.request.contextPath }/LogoutServlet">注销</a>


		</div>
		<div id="childNav">
			<div class="wrap">
				<ul class="clearfix">
					<li><a
						href="${pageContext.request.contextPath }/ProductServlet2">我的商品</a></li>
					<li><a
						href="${pageContext.request.contextPath }/OrderServelt3">销售订单</a></li>
					<li><a
						href="${pageContext.request.contextPath }/UpdateSupplier.jsp">个人信息</a></li>
				</ul>
			</div>
		</div>
		<div id="register" class="wrap">
			<div class="shadow">
				<div class="Shopping-trolley">


					<div class="box">
						<h1>上架商品</h1>
						<ul class="steps clearfix">
							<li class="current"><em></em>填写商品信息</li>
							<li class="last"><em></em>修改成功</li>
						</ul>
						<form
							action="${pageContext.request.contextPath }/updateProductImpl"
							method="post">

							<table>
								<tr>
									<td class="field">商品编号:</td>
									<td><input class="text" type="text" name="p_id"
										value="${product.p_id}" readonly="readonly" /><span></span></td>
								</tr>
								<tr>
									<td class="field">商品名称:</td>
									<td><input class="text" type="text" name="p_name"
										value="${product.p_name }" /><span></span></td>
								</tr>
								<tr>
									<td class="field">商品类型：</td>
									<td><input class="text" type="text" name="p_type"
										value="${product.p_type }" /><span></span></td>
								</tr>
								<tr>
									<td class="field">商品价格：</td>
									<td><input class="text" type="text" id="user_passWord"
										name="p_price" value="${ product.p_price }" " /><span></span></td>
								</tr>
								<tr>
									<td class="field">商品数量：</td>
									<td><input class="text" type="text" name="p_amount"
										value="${  product.p_amount }" /><span></span></td>
								</tr>


								<tr>
									<td class="field">商品描述：</td>
									<td><input class="text" id="tel" name="p_description"
										type="text" value="${product.p_description }" /></td>
								</tr>

								<tr>
									<td class="field">是否热销：</td>
									<td><input class="text" type="text" name="hot"
										value="${product.hot }" /><span></span></td>

								</tr>
								<%-- 	<tr>
								<td class="field"> 上传照片:</td>
								<td> <input type="file" name="image1" value="${product.image1 }" /></td>
							</tr> --%>
								<tr>
									<td></td>
									<td><label class="ui-green"><input type="submit"
											name="submit" value="提交" onclick="sublim()" /></label></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div>
			<center>
				<a href="${pageContext.request.contextPath }/index2"><font
					color="purple">返回主页</font></a>
			</center>
		</div>
		<div id="footer">Copyright &copy; 2019 webwebwww团队</div>
</body>

</html>
