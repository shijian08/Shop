<%@ page import="model.staritem" %>
<%@ page import="dao.StarItemDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="CSS/font.css">
<%--    <link rel="stylesheet" href="CSS/xadmin.css">--%>
    <link rel="stylesheet" href="CSS/add.css">
    <script type="text/javascript" src="JS/jquery.min.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="JS/xadmin.js"></script>
</head>
<body>
${msg}
<form method="post" enctype="multipart/form-data" action="up?action=up">
    <label for = "photo">选择图片:</label>
    <input type = "file" name = "photo" id="photo">
    <input type="submit" value="确定" />
</form>
<div class="x-body">

    <form class="layui-form" method="post" action="up?action=sub">

        <label for="starname">商品名称:</label>
        <input type="text" id="starname" name="starname" placeholder="请输入商品名称">

        <label for="content">商品内容:</label>
        <input type="text" id="content" name="content" placeholder="请输入商品内容">

        <label for="price">商品价格:</label>
        <input type="text" id="price" name="price" placeholder="请输入价格">

        <label for="image">图片:</label>
        <input type="text" id="image" name="image" placeholder="自动识别上传图片名"
               value = "item/images/${imgFileName}" >

        <input type="submit" value="Submit">
    </form>

</div>
</body>
</html>
