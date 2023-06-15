<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() +
            "://"+ request.getServerName()+
            ":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>购物清单</title>
    <link rel="stylesheet" href="CSS/style.css">
    <script language="javascript">
        function delcfm() {
            if (!confirm("确认要删除？")) {
                window.event.returnValue = false;
            }
        }
    </script>
</head>

<body>
    <h1>我的购物车</h1>
    <a href="index.jsp">首页</a> >><a href="index.jsp">商品列表</a>
    <hr>


<div id="shopping">
    <table>
        <tr>
            <th>商品名称</th>
            <th>商品单价</th>
            <th>商品价格</th>
            <th>购买数量</th>
            <th>操作</th>
        </tr>

        <c:if test="${not empty sessionScope.cart}">
            <c:forEach items="${sessionScope.cart.goods}" var="goods">
                <c:set var="it" value="${goods.key }"/>
                <c:set var="num" value="${goods.value }"/>
                <!-- 循环的开始 -->

                <tr name="products" id="product_id_1">
                    <td class="thumb">
                        <img src="img/${it.thumbnail}" />
                        <a href="Item?show=one&id=${it.id}">${it.starname }</a>
                    </td>
                    <td class="number">${it.price }</td>
                    <td class="price" id="price_id_1"><span>${it.price*num}</span>
                    </td>
                    <td class="number">${num}</td>
                    <td class="delete">
                        <a href="Cart?action=delete&id=${it.id}"
                           onclick="delcfm();">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
        <!--循环的结束-->
    </table>
    <div class="total">
        <span id="total">总计:${sessionScope.cart.amount}￥</span>
    </div>
</div>

</body>
</html>
