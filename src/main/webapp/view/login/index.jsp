<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/resource/public/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>知己网</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Internship Sign In & Sign Up Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="${baseurl}/resource/public/loginCss/js/jquery-2.1.4.min.js"></script>
<!-- Custom Theme files -->
<link href="${baseurl}/resource/public/loginCss/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="${baseurl}/resource/public/loginCss/css/snow.css" rel="stylesheet" type="text/css" media="all" />
<link href="${baseurl}/resource/public/loginCss/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<!--<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">-->

<!-- //web font -->
</head>
<style>
	body {
		background: url(${baseurl}/resource/public/loginCss/images/banner2.jpg);
		background-repeat: no-repeat;
		background-size: 100%;
		overflow: hidden;
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
<a href="index.jsp"  class="active">登录</a><a href="${baseurl}/view/login/signup.jsp">注册</a>
</div>
<h1>知己网登陆页面
</h1>
<div class="main-agileits">
<!--form-stars-here-->
		<div class="form-w3-agile">
			<h2 class="sub-agileits-w3layouts">登录</h2>
			<div>
					<input type="text" name="userName" id="userName" placeholder="用户" required="" />
				<p id="userNameNull" style="display: none;color: red">用户名不能为空！！！</p>
					<input type="password" name="Password" id="passWord" placeholder="密码" required="" />
				<p id="passWordNull" style="display: none;color: red">密码不能为空！！！</p>
				<p id="userNameAndPassWordErr" style="display: none;color: red">用户名或密码错误！！！</p>
					<a href="#" class="forgot-w3layouts">忘记密码 ?</a>
				<div class="submit-w3l">
					<button id="inputBySubmit" onclick="toSubmit()">登录</button>
				</div>
				<p class="p-bottom-w3ls"><a href="${baseurl}/view/login/signup.jsp">点击注册</a>如果你没有一个帐户。</p>
			</div>
		</div>
		</div>
<!--//form-ends-here-->
<!-- copyright -->
	<div class="copyright w3-agile">
		<p> © 2017</p>
	</div>
	<!-- //copyright -->
<script type="text/javascript">
    let userInfo;
	function toSubmit() {
        let userName = $("#userName").val();
        let passWord = $("#passWord").val();

		userInfo = {
		    userName:userName,
			userPass:passWord
		};

        if (userName !== null || passWord !== null) {
			$.ajax({
				url:"${baseurl}/user/login",
				type: "post",
				data: userInfo,
				success: function (data) {
                    if (data.result) {
                        location.href = baseUrl + "/user/toIndex";
                    }else {
                        $("#userNameAndPassWordErr").show();
                    }
                }
			})
        }else if (userName === null) {
            $("#userNameNull").show();
        }else if (passWord === null) {
            $("#passWordNull").show();
        }
    }
</script>

</body>
</html>