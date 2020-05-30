<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
    <link type="text/css" rel="stylesheet" href="css/index-style.css"/>
</head>

<body>
<div id="header">
    <%@ include file="header.jsp" %>
</div>
<div id="main" class="wrap2">
    <div class="Shopping-trolley">
        <div class="Shopping-trolley-bt">
            <center>
                当前位置>><a href="#">商品浏览</a>
            </center>
        </div>

        <div class="Shopping-trolley-tb">

            <center>
                <c:choose>
                    <c:when test="${empty products}">
                        抱歉，目前没有该类商品
                    </c:when>
                    <c:otherwise>
                        <%-- <c:set value="${type }" var="type" scope="request"/> --%>
                        <form name="productform" action="">
                            <!-- 放商品表格 -->
                            <h2><font color="red">${buymeg }</font></h2>
                            <table border="1" cellspacing="0" id="tb1" align="center">
                                <thead>
                                <tr>
                                    <!-- <th>编号</th> -->
                                    <th width="100px">商品</th>
                                    <th width="80px">名称</th>
                                    <th width="80px">单价</th>
                                    <th width="60px">库存</th>
                                    <th width="100px">描述</th>
                                    <th width="80px" colspan="3">数量</th>
                                        <%--<th width="100px" colspan="3">操作</th>--%>
                                    <input type="hidden" value="${type}" name="type"></td>
                                </tr>
                                </thead>
                                <c:forEach var="product" items="${products}">
                                    <tr>
                                            <%--<form action="" name="productform${product_id}">--%>
                                        <td><img src="${pageContext.request.contextPath }/${ product.image1 }"></td>
                                        <td>${product.p_name}</td>
                                        <td>${product.p_price }</td>
                                        <td>${product.p_amount}</td>
                                        <td width="340px">${product.p_description }</td>
                                        <td><input type='number' name='quanty' value="1" size="3" max="100" ,min="1">
                                                <%--<input type="hidden" name="p_id" value="${product.p_id}">--%>
                                        <td colspan="2" width="40px"><input type='checkbox' name="p_id" value="${product.p_id }">
                                        </td>
                                            <%--<td width="100px" colspan="2">
                                                <button onclick="cart()">加入购物车</button>
                                                <br/><br/>
                                                <button onclick="buy(${product_id})">&nbsp;&nbsp;立即购买&nbsp;</button>
                                            </td>--%>
                                            <%--</form>--%>
                                    </tr>
                                    <%-- ${product} --%>
                                </c:forEach>
                            </table>
                                <%--<button id="submit" type="submit">立即购买  </button>--%>
                            <button onclick="cart()">加入购物车</button>
                            <button onclick="buy()">&nbsp;&nbsp;立即购买&nbsp;</button>
                        </form>
                    </c:otherwise>
                </c:choose>
            </center>

        </div>

    </div>

</div>
<div>
    <center>
        <a href="${pageContext.request.contextPath }/index"><font color="purple"><h3>返回主页</h3></font></a>
    </center>
</div>
<div id="footer">Copyright &copy; 2019 webwebwww团队</div>
</body>

</html>
<script>
    function cart() {
//        document.("表单的name值").action
//        document.("表单的name值").submit
        document.productform.action = "${pageContext.request.contextPath }/order";
        document.productform.submit();

    }

    function buy() {
        document.productform.action = "${pageContext.request.contextPath }/buy";
        document.productform.submit();

    }

    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return null;
    }

    var buymeg = decodeURIComponent(strs[0].replace("id=", ""));//获取url中的id
    var myurl = GetQueryString("url");
    if (buymeg != null) {
        alert(buymeg);
    }
    if (myurl != null && myurl.toString().length > 1) {
        alert(GetQueryString("buymeg"));
    }
</script>