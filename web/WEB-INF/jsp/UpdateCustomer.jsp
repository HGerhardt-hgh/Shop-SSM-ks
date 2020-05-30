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
		<div class="shadow">
			<div class="Shopping-trolley">
				<div class="box">
					<h1>个人信息</h1>
					<ul class="steps clearfix">
						<li class="current"><em></em>修改个人信息</li>
						<li class="last"><em></em>修改成功</li>
					</ul>

					<form
						action="${pageContext.request.contextPath }/UpdateCustomer"
						method="post" >

						<table>
						<tr>
								<td class="field">客户编号:</td>
								<td><input class="text" type="text" name="user_id"
									value="${customer.user_id}"  readonly="readonly"/><span></span></td>
							</tr>
							<tr>
								<td class="field">名称:</td>
								<td><input class="text" type="text" name="user_name"
									value="${customer.user_name }" /><span></span></td>
							</tr>
						
							<tr>
								<td class="field">手机号码：</td>
								<td><input class="text" type="text" name="user_phone" value="${  customer.user_phone }" /><span></span></td>
							</tr>
							<tr>
								<td class="field">地址：</td>
								<td><input class="text" id="tel" name="user_address"
									type="text"   value="${customer.user_address }" /></td>
							</tr>
							<tr>
								<td class="field">邮箱：</td>
								<td><input class="text" id="tel" name="user_Email"
									type="text"   value="${customer.user_Email }" /></td>
							</tr>

							

							
							<tr>
							<td></td>
							<td><label class="ui-green"><input type="submit"
									name="submit" value="提交" onclick="sublim()" /></label>
								<font color="red">${meg }</font></td>
						</tr>
						</table>
					</form>
				</div>
</div></div>
				
			</div>
				<div>
					<center>
						<a href="${pageContext.request.contextPath }/index"><font
							color="purple">返回主页</font></a>
					</center>
				</div>
				<div id="footer">Copyright &copy; 2019 webwebwww团队</div>
</body>

</html>
