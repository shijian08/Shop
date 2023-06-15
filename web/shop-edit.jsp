<%@ page import="model.staritem" %>
<%@ page import="dao.StarItemDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑</title>
    <link rel="stylesheet" href="CSS/font.css">
    <link rel="stylesheet" href="CSS/xadmin.css">
    <script type="text/javascript" src="JS/jquery.min.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="JS/xadmin.js"></script>
</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    staritem staritem = new StarItemDao().getItemsById(id);
%>
<div class="x-body">

    <form class="layui-form" method="post" action="CM?action=edit">

        <div class="layui-form-item">
            <label for="L_email" class="layui-form-label">
                <span class="x-red">*</span>ID
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_email" name="id" class="layui-input"
                       value="<%=staritem.getId()%>" readonly/>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>ID
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_username" class="layui-form-label">
                <span class="x-red">*</span>商品名称
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_username" name="starname" required=""
                       value="<%=staritem.getStarname()%>" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="x-red">*</span>商品内容
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_pass" name="content" required=""
                       value="<%=staritem.getContent()%>" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="x-red">*</span>商品价格
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_repass" name="price" required=""
                       value="<%=staritem.getPrice()%>" class="layui-input">
            </div>

        </div>

        <div class="layui-form-item">
            <label  class="layui-form-label"></label>
            <button  class="layui-btn">修改</button>
        </div>
    </form>

</div>

</body>
</html>
