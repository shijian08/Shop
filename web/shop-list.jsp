<%@ page import="dao.StarItemDao" %>
<%@ page import="model.staritem" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品列表</title>
    <link rel="stylesheet" href="CSS/font.css">
    <link rel="stylesheet" href="CSS/xadmin.css">
    <script type="text/javascript" src="JS/jquery.min.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="JS/xadmin.js"></script>
</head>
<body>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="background.jsp">首页</a>
        <a href="">信息</a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;
    float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">

            <%--        搜索框--%>
        <form class="layui-form layui-col-md12 x-so" action="Put?action=search" method="post">
                <input type="text" name="name"  placeholder="请输入商品名称" class="layui-input">
                <input type="submit"   class="layui-input" value="确认" style="width: 100px">
        </form>

    </div>

<%--    添加--%>
    <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加','shop-add.jsp',600,500)">
            <i class="layui-icon"></i>添加
        </button>
    </xblock>

    <table class="layui-table">
        <thead>
        <tr>
            <th style="width: 10px">
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary">
                    <i class="layui-icon">&#xe605;</i></div>
            </th>
            <th style="width: 20px">ID</th>
            <th>商品名称</th>
            <th>商品内容</th>
            <th>商品价格</th>
            <th>商品图片</th>
            <th style="width: 55px;">操作</th>
        </tr>
        </thead>
        <%
            int pageNo = 1;
            String spageNo = request.getParameter("pageNo");

            if (spageNo != null){
                pageNo = Integer.parseInt(spageNo);
            }

            StarItemDao sDao = new StarItemDao();
            List<staritem> list = (List<staritem>) request.getAttribute("list");
            if (list == null){
                System.out.println("kong");
                list = sDao.findBypage(pageNo);
            }

            int num = sDao.getTotal();
            int maxpageNo = num / sDao.Pagesize;
            if (num % sDao.Pagesize > 0){
                maxpageNo++;
            }

            if (list != null && list.size() != 0){
                for (staritem staritem:list) {
                    out.println(" <tbody><tr><td>" +
                            "<div class=\"layui-unselect layui-form-checkbox\" lay-skin=\"primary\" data-id='2'>" +
                            "<i class=\"layui-icon\">&#xe605;</i></div></td>");
                    out.println("<td >"+staritem.getId()+"</td>");
                    out.println("<td>"+staritem.getStarname()+"</td>");
                    out.println("<td>"+staritem.getContent()+"</td>");
                    out.println("<td>"+staritem.getPrice()+"</td>");
                    out.println("<td><img src="+staritem.getThumbnail()+" width=\"100px\" height=\"100px\"></td>");
                    out.println(" <td class=\"td-manage\">\n" +
                            "                <a title=\"编辑\" href=\"shop-edit.jsp?id="+staritem.getId()+"\">\n" +
                            "                    <i class=\"layui-icon\">&#xe642;</i>\n" +
                            "                </a>\n" +
                            "                <a title=\"删除\"" +
                            "                onclick=\"return confirm('数据会永久丢失，确定吗?')\" " +
                            "                   href=\"CM?action=del&id="+staritem.getId()+"\">\n" +
                            "                    <i class=\"layui-icon\">&#xe640;</i></a></td></tr></tbody>");
                }%>
    </table>
    <%}%>

    <a href="shop-list.jsp?pageNo=1">首页</a>
    <% if (pageNo > 1){%>
    <a href="shop-list.jsp?pageNo=<%=pageNo-1%>">上一页</a>
    <%} if (pageNo < maxpageNo){%>
    <a href="shop-list.jsp?pageNo=<%=pageNo+1%>">下一页</a>
    <%}%>
    <a href="shop-list.jsp?pageNo=<%=maxpageNo%>">末页</a>
    <form style="display:inline">
        第<input type="number" name="pageNo" min="1" max="<%=maxpageNo%>" value="<%=pageNo%>">页
        <input type="submit" name="submit" value="Go">
    </form>

</div>

</body>
</html>
