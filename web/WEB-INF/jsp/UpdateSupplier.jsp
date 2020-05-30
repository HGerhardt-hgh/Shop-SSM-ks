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

<link type="text/css" rel="stylesheet" href="css/index-style.css" />
</head>

<body>
	
	<div id="header" class="wrap">
		<!-- <div id="logo">
			<img src="images/logo.gif" />
		</div> -->
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
			<div class="shadow">
				<div class="Shopping-trolley">
					<div class="box">
						<h1>个人信息</h1>
						<ul class="steps clearfix">
							<li class="current"><em></em>修改个人信息</li>
							<li class="last"><em></em>修改成功</li>
						</ul>
						<font color="red">${meg }</font>
						<form
							action="${pageContext.request.contextPath }/updateSupplier"
							method="post">

							<table>
								<tr>
									<td class="field">商家编号:</td>
									<td><input class="text" type="text" name="sup_id"
										value="${supplier.sup_id}" readonly="readonly" /><span></span></td>
								</tr>
								<tr>
									<td class="field">商家名称:</td>
									<td><input class="text" type="text" name="sup_name"
										value="${supplier.sup_name }" /><span></span></td>
								</tr>

								<tr>
									<td class="field">手机号码：</td>
									<td><input class="text" type="text" name="sup_phone"
										value="${  supplier.sup_phone }" /><span></span></td>
								</tr>
								<tr>
									<td class="field">地址：</td>
									<td><input class="text" id="tel" name="sup_address"
										type="text" value="${supplier.sup_address }" /></td>
								</tr>
								<tr>
									<td class="field">邮箱：</td>
									<td><input class="text" id="tel" name="sup_email"
										type="text" value="${supplier.sup_email }" /></td>
								</tr>

								<tr>
									<td class="field">店铺描述：</td>
									<td><input class="text" id="tel" name="sup_description"
										type="text" value="${supplier.sup_description }" /></td>
								</tr>


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
	</div>
		<center>
			<a href="${pageContext.request.contextPath }/index2"><font
				color="purple">返回主页</font></a>
		</center>
	</div>
	<div id="footer">Copyright &copy; 2019 webwebwww团队</div>
</body>

</html>
