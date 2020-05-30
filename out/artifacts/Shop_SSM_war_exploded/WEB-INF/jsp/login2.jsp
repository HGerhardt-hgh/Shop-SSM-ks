<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 
 <link type="text/css" rel="stylesheet" href="css/index-style.css" />
 <link type="text/css" rel="stylesheet" href="css/login2.css" />

<script type="text/javascript" src="scripts/function.js"></script>

</head>


<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
	
<div class="wrap" id="wrap">
	
	<div class="logGet">
			<form action="${pageContext.request.contextPath }/Login2" method="post">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">商家登录</p>
			</div>
			<!-- 输入框 -->
		
			<div class="lgD">
				<img src="images/用户.jpg" width="20" height="20" alt=""/>
				<input type="text" name="username"  placeholder="输入用户名" />
				<font color="red">${loginmeg }</font>
			</div>
			<div class="lgD">
				<img src="images/密码.jpg" width="20" height="20" alt=""/>
				<input type="text" name="password"
					placeholder="输入用户密码" />
			</div>
			<div class="logC">
			<!-- 	<a href="index.jsp" target="_self"><button>登 录</button></a> -->
			<a target="_self"> 	<button>登 录</button></a>
			</div>
			<br>
			
           </form>
            <div class="logC">
				<a href="${pageContext.request.contextPath }/register2" target="_self"><button>还没有账号？</button></a>
			</div>
		</div>
		
</div>
			<div>
			<center>
			<a href="${pageContext.request.contextPath }/index"><font color="purple"><h3>返回主页</h3></font></a>
			</center>
		</div>
<div id="footer">
	Copyright &copy; 2019 webwebwww团队
</div>
</body>
</html>
