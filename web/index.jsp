<%@ page import="dao.StarItemDao" %>
<%@ page import="model.staritem" %>
<%@ page import="java.util.List" %>
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
    <title>首页</title>

    <link rel="stylesheet" href="CSS/index.css">
<%--    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>--%>
    <script src="JS/jquery.min.map.js"></script>
</head>
<body>
<%
    StarItemDao dao = new StarItemDao();
    List<staritem> list = dao.findAll();
%>
<!-- 顶部导航条 -->
<div class="topbar">
    <div class="container">
        <div class="topbar-nav">
            <a href="index.jsp">商城首页</a>
                <span class="ver">|</span>
            <a href="#">商品分类</a>
                <span class="ver">|</span>
            <a href="#">精品推荐</a>
                <span class="ver">|</span>
            <a href="#">新品推荐</a>
                <span class="ver">|</span>
            <a href="#">免费开店</a>
                <span class="ver">|</span>
            <a href="#">云服务</a>
                <span class="ver">|</span>
            <a href="#">网站无障碍</a>
                <span class="ver">|</span>
            <a href="#">商城移动版</a>
                <span class="ver">|</span>
            <a href="#">问题反馈</a>

        </div>
        <div class="topbar-cart">
            <a href="giftcart.jsp"><i></i>购物车</a>
        </div>
        <div class="topbar-info">
            <%
                String username = (String) session.getAttribute("username");
                if (username == null ){response.setHeader("refresh","1;url=login.jsp");
            %>
            <a href="login.jsp" class="link">登录</a>
                <span class="ver">|</span>
            <a href="register.jsp" class="link">注册</a>
            <%
                }else { out.println("登录成功,欢迎" + username); }
            %>
            <span class="ver">|</span>
            <a href="admin_login.jsp" class="link">后台管理</a>
        </div>
    </div>
</div>

<!-- header区 -->
<div class="header">
    <div class="container">
        <div class="header-logo">
            <a href="index.html" class="logo"></a>
            <div class="advertising">
                <a href="#"></a>
            </div>
        </div>

        <div class="header-nav">
            <ul class="navlist clearfix">
                <li class="all">
                    <div class="side-nav">
                        <ul class="sidenav-list">

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                    <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                    <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                    <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                    <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                            <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li class="side-item"><a href="#">家用电器<i class="iconfont">&#xe6a7;</i></a>
                                <div class="children-nav">
                                    <ul class="children-list">

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Tv.png" class="icon-80">
                                                <span class="title">电视</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/air-conditioning.png" class="icon-80">
                                                <span class="title">空调</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/refrigerator.png" class="icon-80">
                                                <span class="title">冰箱</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/heater.png" class="icon-80">
                                                <span class="title">热水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/washingmachine.png" class="icon-80">
                                                <span class="title">洗衣机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/hood.png" class="icon-80">
                                                <span class="title">油烟机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Gasstove.png" class="icon-80">
                                                <span class="title">燃气灶</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/juicer.png" class="icon-80">
                                                <span class="title">榨汁机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/Soymilk.png" class="icon-80">
                                                <span class="title">豆浆机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/ricecooker.png" class="icon-80">
                                                <span class="title">电饭煲</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/BreadMaker.png" class="icon-80">
                                                <span class="title">面包机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/CoffeeMachine.jpeg" class="icon-80">
                                                <span class="title">咖啡机</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>

                                    <ul class="children-list">
                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/vacuumcleaner.png" class="icon-80">
                                                <span class="title">吸尘器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/electricfan.png" class="icon-80">
                                                <span class="title">电风扇</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/waterpurifier.png" class="icon-80">
                                                <span class="title">净水器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/humidifier.png" class="icon-80">
                                                <span class="title">加湿器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/projector.png" class="icon-80">
                                                <span class="title">投影仪</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                        <li>
                                            <a href="#" class="link">
                                                <img src="img/icon/mosquitokiller.png" class="icon-80">
                                                <span class="title">灭蚊器</span></a>
                                            <a href="#" class="buybtn">选购</a>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                        </ul>
                    </div>
                </li>
                <li class="item"><a href="#">超市</a></li>
                <li class="item"><a href="#">秒杀</a></li>
                <li class="item"><a href="#">家电</a></li>
                <li class="item"><a href="#">生鲜</a></li>
                <li class="item"><a href="#">拍卖</a></li>
                <li class="item"><a href="#">会员</a></li>
                <li class="item"><a href="#">便宜包邮</a></li>
                <li class="item"><a href="#">服务</a></li>
                <li class="item"><a href="#">进口好物</a></li>
            </ul>
        </div>
        <!-- 搜索框 -->
        <div class="header-search">
            <form action="" class="search-form">
                <input type="text" class="search-text">
                <input type="submit" class="search-btn iconfont" value="&#xe652;">
            </form>
        </div>
    </div>

</div>

<!-- 幻灯片区 -->
<div class="carousel container">
    <div class="carousel-inner">
        <img src="img/banner/banner1.jpg" class="item first">
        <img src="img/banner/banner2.webp" class="item">
        <img src="img/banner/banner3.jpg" class="item">
        <img src="img/banner/banner4.jpg" class="item">
        <img src="img/banner/banner5.jpg" class="item">
        <img src="img/banner/banner6.jpg" class="item">
    </div>
    <div class="carousel-btn">
        <a href="javascript:" class="btn active"></a>
        <a href="javascript:" class="btn"></a>
        <a href="javascript:" class="btn"></a>
        <a href="javascript:" class="btn"></a>
        <a href="javascript:" class="btn"></a>
        <a href="javascript:" class="btn"></a>
    </div>
    <a href="javascript:" class="prev"><i class="iconfont">&#xe697;</i></a>
    <a href="javascript:" class="next"><i class="iconfont">&#xe6a7;</i></a>
</div>

<!-- 功能区  -->
<div class="home clearfix">
    <div class="container">
        <div class="features">
            <ul class="features-list clearfix">
                <li class="features-item"><a href="#"><i class="iconfont">&#xe600;</i>选购电器</a></li>
                <li class="features-item"><a href="#"><i class="iconfont">&#xe6fa;</i>企业团购</a></li>
                <li class="features-item"><a href="#"><i class="iconfont">&#xe6f7;</i>一元活动</a></li>
                <li class="features-item"><a href="#"><i class="iconfont">&#xe77c;</i>米粉卡</a></li>
                <li class="features-item"><a href="#"><i class="iconfont">&#xe6f2;</i>以旧换新</a></li>
                <li class="features-item"><a href="#"><i class="iconfont">&#xe6f5;</i>话费充值</a></li>
            </ul>
        </div>
        <div class="hot-promo">
            <ul class="promo-list clearfix">
                <li class="promo-item"><a href="#"><img src="img/icon/home.jpg" alt=""></a></li>
                <li class="promo-item"><a href="#"><img src="img/icon/home1.webp" alt=""></a></li>
                <li class="promo-item"><a href="#"><img src="img/icon/home.webp" alt=""></a></li>
            </ul>
        </div>
    </div>
</div>

<!-- 明星单品 -->
<div class="single-goods">
    <div class="container">
        <div class="s-lg-title">
            <span class="page-title">明星单品</span>
            <div class="title-more">
                <a href="javascript:" class="s-prev btn-default"><i class="iconfont">&#xe697;</i></a>
                <a href="javascript:" class="s-next"><i class="iconfont">&#xe6a7;</i></a>
            </div>
        </div>
        <div class="sgoods-content">
            <ul class="sgoods-list clearfix" style="margin-left: 0; margin-left :0.5s ease">

                <%
                    if(list != null && list.size() != 0){

                        for(staritem staritem:list){
                            out.println("<li class=\"sgoods-item\">");
                            out.println("<div class=\"sgoods-thumb\">");
                            out.println("<a href=\"Item?show=one&id="+staritem.getId()+"\">" +
                                    "<img src=\"./"+staritem.getThumbnail()+"\"></a>");
                            out.println("</div>");
                            out.println("<div class=\"goods-title\">");
                            out.println("<a href=\"\" class=\"title\">"+staritem.getStarname()+"</a>");
                            out.println("</div>");
                            out.println(" <p class=\"goods-info\">"+staritem.getContent()+"</p>");
                            out.println(" <p class=\"goods-info\">"+staritem.getPrice()+"元</p><br>");
                            out.println("</li>");
                        }
                    }
                %>

            </ul>
        </div>
    </div>
</div>

<!-- 页脚 -->
<div class="footer">
    <div class="container">
        <div class="footer-servise">
            <ul class="servise-list clearfix">
                <li class="servise-item">
                    <a href=""><i class="iconfont">&#xe712;</i>预约维修服务</a>
                </li>
                <li class="servise-item">
                    <a href=""><i class="iconfont">&#xe70d;</i>七天无理由退货</a>
                </li>
                <li class="servise-item">
                    <a href=""><i class="iconfont">&#xe706;</i>15天免费换货</a>
                </li>
                <li class="servise-item">
                    <a href=""><i class="iconfont">&#xe6f1;</i>满150元包邮</a>
                </li>
                <li class="servise-item">
                    <a href=""><i class="iconfont">&#xe709;</i>520余家售后网点</a>
                </li>
            </ul>
        </div>
        <div class="footer-info clearfix">
            <div class="more-info">
                <ul class="info-list clearfix">
                    <li class="info-item">
                        <p class="info-title">帮助中心</p>
                        <p class="c1"><a href="">账户中心</a></p>
                        <p class="c1"><a href="">购物指南</a></p>
                        <p class="c1"><a href="">订单操作</a></p>
                    </li>
                    <li class="info-item">
                        <p class="info-title">服务支持</p>
                        <p class="c1"><a href="">售后政策</a></p>
                        <p class="c1"><a href="">自助服务</a></p>
                        <p class="c1"><a href="">相关下载</a></p>
                    </li>
                    <li class="info-item">
                        <p class="info-title">线下门店</p>
                        <p class="c1"><a href="">我们之家</a></p>
                        <p class="c1"><a href="">服务网点</a></p>
                        <p class="c1"><a href="">零售网点</a></p>
                    </li>
                    <li class="info-item">
                        <p class="info-title">关于我们</p>
                        <p class="c1"><a href="">了解我们</a></p>
                        <p class="c1"><a href="">加入我们</a></p>
                        <p class="c1"><a href="">联系我们</a></p>
                    </li>
                    <li class="info-item">
                        <p class="info-title">关注我们</p>
                        <p class="c1"><a href="">新浪微博</a></p>
                        <p class="c1"><a href="">我们部落</a></p>
                        <p class="c1"><a href="">官方微信</a></p>
                    </li>
                    <li class="info-item">
                        <p class="info-title">特色服务</p>
                        <p class="c1"><a href="">F 码通道</a></p>
                        <p class="c1"><a href="">礼物码</a></p>
                        <p class="c1"><a href="">防伪查询</a></p>
                    </li>
                </ul>
            </div>
            <div class="cm-info">
                <p class="phone">400-100-5678</p>
                <p class="time">周一至周日 8:00-18:00<br />（仅收市话费）</p>
                <a href="" class="online"><i class="iconfont">&#xe720;</i>24小时在线客服</a>
            </div>
        </div>
    </div>
</div>

</body>
<script src="JS/main.js"></script>
</html>
