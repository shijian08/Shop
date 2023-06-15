<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script src="JS/register.js"></script>
    <link href="CSS/register.css" rel="stylesheet">
</head>

<body onload="document.forms['registrationForm']['username'].focus();">
<form name="registrationForm" onsubmit="return validateForm()" action="Put?action=register" method="post" >
    <h1>用户注册</h1>
    <div id="error" class="error-msg"></div>
        <label for="username">账号</label>
    <input type="text" id="username" name="username" required>
        <label for="password">密码</label>
    <input type="password" id="password" name="password" required>
        <label for="confirmpassword">确认密码</label>
    <input type="password" id="confirmpassword" name="confirmpassword" required>
        <label for="email">邮箱</label>
    <input type="text" id="email" name="email" required>
        <label for="phone">手机号</label>
    <input type="text" id="phone" name="phone" required>

    <input type="submit" value="提交">
        <a href="login.jsp" style="margin-left: 620px">去登录</a>
</form>

</body>
</html>
