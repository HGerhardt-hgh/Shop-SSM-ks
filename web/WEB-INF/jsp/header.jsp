
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/index-style.css" />

<div id="header" class="wrap">

    <div class="help">
        <a href="${pageContext.request.contextPath}/order"
           class="shopping"> <img src="images/购物车2.png" />购物车
        </a>

        <c:choose>
            <c:when test="${sessionScope.customer==null }">
                <a href="${pageContext.request.contextPath }/login">登录</a>
                <a href="${pageContext.request.contextPath }/register">注册</a>

            </c:when>
            <c:otherwise>
                <a href="${pageContext.request.contextPath}/order"
                   class="shopping"> <img src="images/订单.jpg" />订单查询
                </a>
                欢迎你，${sessionScope.customer.getUser_name() }!&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="${pageContext.request.contextPath }/login">个人信息</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="${pageContext.request.contextPath }/Logout">注销</a>

            </c:otherwise>
        </c:choose>

    </div>

</div>
<div id="childNav">
    <div class="wrap">
        <ul class="clearfix">
            <!-- <li class="first"><a href="#">乐器</a></li> -->
            <li><a
                    href="${pageContext.request.contextPath }/type?type=钢琴">钢琴</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=竖笛">竖笛</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=吉他">吉他</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=古筝">古筝</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=琵琶">琵琶</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=二胡">二胡</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=竖笛">竖笛</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=小提琴">小提琴</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=大提琴">大提琴</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=萨克斯">萨克斯</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=尤克里里">尤克里里</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=箫">箫</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=乐谱">乐谱</a></li>
            <li><a
                    href="${pageContext.request.contextPath }/type?type=其他">其他</a></li>

        </ul>
    </div>
</div>