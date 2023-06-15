function validateForm() {
    var username = document.forms["registrationForm"]["username"].value;
    var password = document.forms["registrationForm"]["password"].value;
    var confirmpassword = document.forms["registrationForm"]["confirmpassword"].value;
    var email = document.forms["registrationForm"]["email"].value;
    var phone = document.forms["registrationForm"]["phone"].value;
    var emailRegex = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/; // regex for email validation
    var phoneRegex = /^\d{11}$/; // regex for phone validation


    if (username == null) {
        alert("用户名不能为空！");
        return false;
    } else if (username.length < 5 || username.length > 20) {
        alert("用户名长度应在5-20之间！");
        return false;
    }

    if (password == null) {
        alert("密码不能为空！");
        return false;
    }else if (password.length < 8 || password > 16){
        alert("密码至少为8位数,且不超过16位！");
        return false;
    }else  if (confirmpassword.length < 8 || confirmpassword.length > 16){
        alert("确认密码至少为8位数,且不超过16位！");
        return false;
    }

    if (email == null ) {
        alert("邮箱不能为空");
        return false;
    } else if (!emailRegex.test(email)) {
        salert("请输入正确的邮箱地址");
        return false;
    }

    if (phone == null) {
        alert("手机号不能为空");
        return false;
    } else if (!phoneRegex.test(phone)) {
        alert("请输入正确的手机号");
        return false;
    }
    else {alert("登录成功");}
}
