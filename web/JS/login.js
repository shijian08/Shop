function ab(){
    var username = document.forms["login"]["username"].value;
    var password = document.forms["login"]["password"].value;

    if (username == null) {
        alert("用户名不能为空！");
        return false;
    } else if (username.length < 5 || username.length > 20) {
        alert("用户名长度应在5-20之间！");
        return false;
    }

    if (password == null){
        alert("密码不能为空！");
        return false;
    }else if (password.length < 8 || password.length > 16) {
        alert("密码至少为8位数,且不超过16位！");
        return false;
    }else {alert("登录成功");}
}