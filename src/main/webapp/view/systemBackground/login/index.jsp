<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/resource/public/tag.jsp" %>

<html>
<head>
    <title>知己网后台登录系统</title>
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="${baseurl}/resource/public/js/jquery-3.2.1.js"></script>

    <!--<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
-->
    <!-- For-Mobile-Apps-and-Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="Simple Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //For-Mobile-Apps-and-Meta-Tags -->

</head>

<body>

<h1>知己网后台登录系统</h1>
<div class="container w3">
    <h2>登录页面</h2>
    <form action="javascript:" class="formStyle">
        <div class="username">
            <span class="username" style="height:19px">用户:</span>
            <input type="text" name="name" class="name" placeholder="" required="">
            <div class="clear"></div>
        </div>
        <div class="password-agileits">
            <span class="username" style="height:19px">密码:</span>
            <input type="password" name="password" class="password" placeholder="" required="">
            <div class="clear"></div>
        </div>
        <span id="errorInfo" style="display: none;color: red;width: auto">用户名或密码不能为空！！！</span>
        <span id="errorInfoOfLogin" style="display: none;color: red;width: auto">用户名或密码输入错误！！！</span>
        <div class="rem-for-agile">
            <input type="checkbox" name="remember" class="remember">记得我
            　　
            <br>
            <a href="#">忘记了密码</a><br>
        </div>
        <div class="login-w3">
            <input type="submit" class="login" value="Login" id="login">
        </div>
        <div class="clear"></div>
    </form>
</div>
<div class="footer-w3l">
    <p> 知己网后台登录系统</p>
</div>
</body>

<script>
    $("#login").click(function () {
        let userName = $(".name").val();
        let passWord = $(".password").val();

        alert(123);
        if (userName !== "" && passWord !== "") {
            $.post(baseUrl + "/admin/login", {
                userName: userName,
                passWord: passWord
            },function (data) {
                if (data.result === true) {
                    location.href = "${baseurl}/admin/index";
                }
            });
        } else {
            $("#errorInfo").show();
        }
    })
</script>
</html>