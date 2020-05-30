<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>悦享网 - 首页</title>
<link type="text/css" rel="stylesheet" href="css/index-style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
	
	<div id="register" class="wrap">
		<div class="shadow">
			<em class="corner lb"></em> <em class="corner rt"></em>
			<div class="box">
				<h1>欢迎注册易买网</h1>
				<ul class="steps clearfix">
					<li class="current"><em></em>填写注册信息</li>
					<li class="last"><em></em>注册成功</li>
				</ul>
			<form action="${pageContext.request.contextPath }/Register2" id="regForm" method="post">
				
					<table>
						<tr>
							<td class="field">账号：</td>
							<td><input class="text" type="text" name="sup_number"
								onfocus="FocusItem(this)" onblur="CheckItem(this);"
								placeholder="请输入字母或数字组成的用户名" maxlength="16" /><span></span></td>
						</tr>
						<tr>
							<td class="field">商店名称：</td>
							<td><input class="text" type="text" name="sup_name"
								onfocus="FocusItem(this)" onblur="CheckItem(this);"
								placeholder="请输入字母或数字组成的用户名" maxlength="16" /><span></span></td>
						</tr>
						<tr>
							<td class="field">登录密码：</td>
							<td><input class="text" type="password" id="sup_passWord"
								name="password" onfocus="FocusItem(this)"
								onblur="CheckItem(this);" required="required"
								placeholder="请输入字母或数字组成的密码" maxlength="16" /><span></span></td>
						</tr>
						<tr>
							<td class="field">确认密码：</td>
							<td><input class="text" type="password"
								name="sup_rePassWord" onfocus="FocusItem(this)"
								onblur="CheckItem(this);" required="required"
								placeholder="请再次输入密码" maxlength="16" /><span></span></td>
						</tr>
						
						<tr>
							<td class="field">联系电话：</td>
							<td><input suplass="text" id="tel" name="sup_phone"
								type="text"  pattern="\d{11}" placeholder="请填入有效联系方式"
								title="请输入11位有效电话号码"  /></td>
						</tr>
						<tr>
							<td class="field">地址：</td>
							<td><input class="text" type="text" name="sup_adress"
								onfocus="FocusItem(this)" onblur="CheckItem(this);"
								placeholder="请输入地址" maxlength="16" /><span></span></td>

						</tr>
						<tr>
							<td class="field">邮箱：</td>
							<td><input class="text" type="text" name="sup_email"
								onfocus="FocusItem(this)" onblur="CheckItem(this);"
								placeholder="请输入正确的邮箱格式" maxlength="16" /><span></span></td>

						</tr>
						<tr>
							<td class="field">店铺描述：</td>
							<td><input class="text" type="text" name="sup_description"	placeholder="最多50个字" maxlength="50" /><span></span></td>

						</tr>
						<%--<tr>

							<td class="field">验证码：</td>
							<td><input class="text verycode" type="text" id="text1"
								value="" placeholder="请输入验证码（区分大小写） " />
								<canvas id="canvas" width="100" height="43" onclick="dj()"
									style="border: 1px solid #ccc;
        border-radius: 5px;"></canvas>
								<span></span></td>
						</tr>--%>
						<tr>
							<td></td>
							<td><label class="ui-green"><input type="submit"
									name="submit" value="提交注册" onclick="sublim()" /></label></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div>
			<center>
			<a href="${pageContext.request.contextPath }/index"><font color="purple"><h3>返回主页</h3></font></a>
			</center>
		</div>
	<div id="footer">Copyright &copy; 2019 webwebwww团队</div>
</body>
<script src="js/验证码.js"></script>
</html>
