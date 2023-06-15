<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <link href="CSS/login.css" rel="stylesheet">
</head>
<body onload="document.forms['admin_login']['username'].focus();">
    <form method="post" name="admin_login" action="Put?action=admin_login">
        <div class="container">
            <div class="login-wrapper">
                <div class="header">管理员登录</div>
                <div class="form-wrapper">
                    <input type="text" name="username" placeholder="username" class="input-item">
                    <input type="password" name="password" placeholder="password" class="input-item">
                    <div class="btn">
                        <input type="submit" name="Submit" value="立即登录" >
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>