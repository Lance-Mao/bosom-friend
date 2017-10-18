<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/resource/public/tag.jsp" %>
<!DOCTYPE html>
<html>
<head style="background: url(${baseurl}/resource/public/loginCss/images/banner2.jpg)">
    <title>知己网</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="Internship Sign In & Sign Up Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- Custom Theme files -->
    <link href="${baseurl}/resource/public/loginCss/css/font-awesome.min.css" rel="stylesheet" type="text/css"
          media="all">
    <link href="${baseurl}/resource/public/loginCss/css/snow.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="${baseurl}/resource/public/loginCss/css/style.css" rel="stylesheet" type="text/css" media="all"/>

</head>
<style>
    body {
        background: url(${baseurl}/resource/public/loginCss/images/banner2.jpg);
        background-repeat: no-repeat;
        overflow: hidden;
        background-size: cover;
    }

    .form-w3-agile {
        height: 390px;
        padding: 5px 35px;
    }

    .form-w3-agile form input {
        height: 19px;
    }

    .submit-w3l {
        padding: 0px 38px;
    }

    .submit-w3l input[type="submit"] {
        padding: 1px 38px;
    }
    #inputBySubmit{
        background: #fff;
        color: #000;
        outline: none;
        display: block;
        margin: 0 auto;
        border: none;
        cursor: pointer;
        padding: 1px 38px;
        font-size: 14px;
        width: 100%;
        margin-top: 1em;
        font-weight: bold;
        text-transform: uppercase;
        font-family: 'Open Sans', sans-serif;
        transition: 0.3s all;
        -webkit-transition: 0.3s all;
        -moz-transition: 0.3s all;
        -o-transition: 0.3s all;
        -ms-transition: 0.3s all;
    }
    #inputBySubmit:hover{
        background: #df5799;
        color:#ffffff;
        transition: 0.3s all;
        -webkit-transition: 0.3s all;
        -moz-transition: 0.3s all;
        -o-transition: 0.3s all;
        -ms-transition: 0.3s all;
    }
    .form-w3-agile input[type="date"]{
        outline: none;
        font-size: 15px;
        color: #ffffff;
        text-align: left;
        padding: 12px 14px;
        width: 95.5%;
        border: none;
        border-bottom: 1px solid #889ba0;
        -webkit-appearance: none;
        margin-bottom: 15px;
        background: transparent;
        font-family: 'Open Sans', sans-serif;
        letter-spacing: 1px;
    }
    .form-w3-agile {
        padding: 10px 40px;
    }
</style>
<body>
<div class="snow-container">
    <div class="snow foreground"></div>
    <div class="snow foreground layered"></div>
    <div class="snow middleground"></div>
    <div class="snow middleground layered"></div>
    <div class="snow background"></div>
    <div class="snow background layered"></div>
</div>

<div class="top-buttons-agileinfo">
    <a href="index.jsp">登录</a><a href="${baseurl}/view/login/signup.jsp" class="active">注册</a>
</div>
<h1>知己网注册页面</h1>
<div class="main-agileits">
    <!--form-stars-here-->
    <div class="form-w3-agile">
        <h2 class="sub-agileits-w3layouts">注册页面</h2>
        <div>
            <input id="userName" type="text" name="Username" placeholder="用户名" />
            <input id="phone" type="text" name="phone" placeholder="电话" />
            <input id="passWord" type="password" name="Password" placeholder="密码" />
            <input id="passWordR" type="password" name="Password" placeholder="确认密码" />
            <input id="birthday" type="text" name="birthday" placeholder="出生日期" />
            <input id="sex" type="text" name="sex" placeholder="性别" />
            <span id="showMsgNull" style="display: none;color: red"></span>
            <span id="showMsg" style="display: none;color: red"></span>
            <div class="submit-w3l">
                <button id="inputBySubmit" style="height: 19px" onclick="toSignup()">注册</button>
            </div>
        </div>
    </div>
</div>
<!--//form-ends-here-->
<!-- copyright -->
<%--<div class="copyright w3-agile">--%>
<%--<p> © 2017 Internship Sign In & Sign Up Form . All rights reserved | Design by <a href="http://w3layouts.com/"--%>
<%--target="_blank">W3layouts</a></p>--%>
<%--</div>--%>
<!-- //copyright -->
<script type="text/javascript" src="${baseurl}/resource/public/loginCss/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
    let userInfo;

    function toSignup() {
        let userName = $("#userName").val();
        let passWord = $("#passWord").val();
        let passWordR = $("#passWordR").val();
        let phone = $("#phone").val();
        let sex = $("#sex").val();
        let birthday = $("#birthday").val();
        if (passWord === passWordR) {
            if (userName !== null && passWord !== null && phone !== null && sex !== null && birthday !== null) {
                userInfo = {
                    userName: userName,
                    userPass: passWord,
                    phone: phone,
                    sex: sex,
                    birthday: birthday,
                }
                $.ajax({
                    url: "${baseurl}/user/signup",
                    type: "post",
                    data: userInfo,
                    success: function (data) {
                        if (data.result) {
                            $("#showMsgSuccess").text("注册成功，马上跳转至登录页面！！！");
                            $("#showMsgSuccess").show();
                            location.href = baseUrl + "/user/toLogin";
                        }
                    }
                })
            }else {
                $("#showMsgNull").text("请将所有信息填写完整！！！");
                $("#showMsgNull").show();
            }
        }else {
            $("#showMsg").text("两次密码输入不一致！！！");
            $("#showMsg").show();
        }
    }
</script>

</body>
</html>