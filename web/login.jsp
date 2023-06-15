<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <link href="CSS/login.css" rel="stylesheet">
    <script src="JS/login.js"></script>
</head>
<body>
<body onload="document.forms['user_login']['username'].focus();">
<form  name="user_login"  onsubmit="return ab()" action="Put?action=login" method="post" >
    <div class="container">
        <div class="login-wrapper">
            <div class="header">用户登录</div>
            <div class="form-wrapper">
                <input type="text" name="username" placeholder="username" class="input-item">
                <input type="password" name="password" placeholder="password" class="input-item">
                    <a href="admin_login.jsp" style="">管理员登录</a>
                    <a href="register.jsp" style="margin-left: 150px;">无账号,立即注册</a>
                <div class="btn">
                    <input type="submit" name="Submit" value="立即登录" >
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</body>
</html>
