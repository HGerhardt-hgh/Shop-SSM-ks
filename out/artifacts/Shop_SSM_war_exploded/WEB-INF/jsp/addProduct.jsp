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
			<!-- <a href="Shopcar.jsp" class="shopping"> <img
				src="images/购物车2.png" />购物车 -->
			</a> 欢迎你，${sessionScope.supplier.getSup_name() }! <a
				href="${pageContext.request.contextPath }/LogoutServlet">注销</a>

			<!-- <div class="navbar">
		<ul class="clearfix">
			<li class="current"><a href="#">首页</a></li>
			<li><a href="#">乐谱</a></li>
			<li><a href="#">乐器</a></li>
			<li><a href="#">乐剧</a></li>
			<li><a href="#">热销</a></li>
		</ul>
	</div> -->
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
							<li class="last"><em></em>上架成功</li>
						</ul>
						<form
							action="${pageContext.request.contextPath }/addProductImpl"
							method="post" enctype="multipart/form-data">

							<table>
								<tr>
									<td class="field">商品名称:</td>
									<td><input class="text" type="text" name="p_number"
										onfocus="FocusItem(this)" onblur="CheckItem(this);"
										placeholder="请输入字母或数字组成的用户名" maxlength="16" /><span></span></td>
								</tr>
								<tr>
									<td class="field">商品类型：</td>
									<td><input class="text" type="text" name="p_type"
										onfocus="FocusItem(this)" onblur="CheckItem(this);"
										placeholder="请输入字母或数字组成的用户名" maxlength="16" /><span></span></td>
								</tr>
								<tr>
									<td class="field">商品价格：</td>
									<td><input class="text" type="text" id="user_passWord"
										name="p_price" onfocus="FocusItem(this)"
										onblur="CheckItem(this);" required="required"
										placeholder="请输入字母或数字组成的密码" maxlength="16" /><span></span></td>
								</tr>
								<tr>
									<td class="field">商品数量：</td>
									<td><input class="text" type="text" name="p_amount"
										onfocus="FocusItem(this)" onblur="CheckItem(this);"
										required="required" placeholder="请再次输入密码" maxlength="16" /><span></span></td>
								</tr>


								<tr>
									<td class="field">商品描述：</td>
									<td><input class="text" id="tel" name="p_description"
										type="text" placeholder="请填入有效联系方式" title="请输入11位有效电话号码" /></td>
								</tr>

								<%--<tr>
									<td class="field">是否热销：</td>
									<td><input class="text" type="text" name="hot"
										onfocus="FocusItem(this)" onblur="CheckItem(this);"
										placeholder="请输入正确的邮箱格式" maxlength="16" /><span></span></td>

								</tr>--%>
								<tr>
									<td></td>
									<td>请谨慎选择商品图片，一旦提交后无法修改,照片要求jpg格式</td>
								</tr>
								<tr>
									<td class="field">上传照片:</td>
									<td><input type="file" name="image1" /></td>
								</tr>
								<tr>
									<td></td>
									<td><label class="ui-green"><input type="submit"
											name="submit" value="提交注册" onclick="sublim()" /></label></td>
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
