<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+
            "://"+request.getServerName()+
            ":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>商品详细</title>

    <script type="text/javascript" src="JS/js/lhgcore.js"></script>
    <script type="text/javascript" src="JS/js/lhgdialog.js"></script>

</head>

<script type="text/javascript">
    function selflog_show(id) {
        var num =  document.getElementById("number").value;
        J.dialog.get({
            id: 'haoyue_creat',
            title: '购物成功！',
            width: 600,
            height:400,
            // link: 'Cart?id='+id+'&num='+num+'&action=add',
            link:'Cart&action=add&num='+num+'&id='+id,
            cover:true
        });
    }

    function  getnumber(){
        return document.getElementById("number").value;
    }


    function add() {
        var num = parseInt(document.getElementById("number").value);
        if(num < 100)
        {
            document.getElementById("number").value = ++num;
        }
    }

    function sub() {
        var num = parseInt(document.getElementById("number").value);
        if(num > 1)
        {
            document.getElementById("number").value = --num;
        }
    }

</script>

<style type="text/css">
    hr{
        border-color:#FF7F00;
    }

    div{
        float:left;
        margin-left: 30px;
        margin-right:30px;
        margin-top: 5px;
        margin-bottom: 5px;

    }
    div dd{
        margin:0px;
        font-size:10pt;
    }


    span{
        padding:0 2px;border:1px #c0c0c0 solid;cursor:pointer;
    }
    a{
        text-decoration: none;
    }
</style>
<body>
    <h1>商品详情</h1>
        <a href="index.jsp">首页</a> >> <a href="index.jsp">商品列表</a>
    <hr>

    <center>
        <table width="750px" height="60px" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <!-- 商品详情 -->
                <c:if test="${not empty item}">
                    <td width="70%" valign="top">
                        <table>
                            <tr>
                                <td rowspan="5">
                                    <img src="${item.thumbnail }" width="160px" height="160px"/>
                                </td>
                            </tr>
                            <tr>
                                <td><B>${item.starname }</B></td>
                            </tr>
                            <tr>
                                <td>内容:${item.content }</td>
                            </tr>
                            <tr>
                                <td>价格:${item.price }元</td>
                            </tr>
                            <tr>
                                <td>加入购物车数量:
                                    <span id="sub" onclick="sub();">-</span>
                                        <input type="text" id="number" name="number" value="1" size="2"/>
                                    <span id="add" onclick="add();">+</span></td>
                            </tr>
                        </table>
                        <div id="cart">
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="javascript:selflog_show(${item.id})"><strong>加入购物车</strong></a>
<%--                            <a href="Cart?action=add&id=${item.id}&num="><strong>加入购物车</strong></a>--%>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="Cart?action=show"><strong>查看购物车</strong></a>
                        </div>
                    </td>
                </c:if>

                <%
                    String list ="";
                    //从客户端获得Cookies集合
                    Cookie[] cookies = request.getCookies();
                    //遍历这个Cookies集合
                    if(cookies != null && cookies.length > 0)
                    {
                        for(Cookie c:cookies)
                        {
                            if(c.getName().equals("ListViewCookie"))
                            {
                                list = c.getValue();
                            }
                        }
                    }

                    list+=request.getParameter("id")+",";
                    //如果浏览记录超过1000条，清零.
                    String[] arr = list.split(",");
                    if(arr != null && arr.length > 0)
                    {
                        if(arr.length >= 1000)
                        {
                            list="";
                        }
                    }
                    Cookie cookie = new Cookie("ListViewCookie", URLEncoder.encode(list));
                    response.addCookie(cookie);

                %>
            </tr>
        </table>
    </center>
</body>
</html>
