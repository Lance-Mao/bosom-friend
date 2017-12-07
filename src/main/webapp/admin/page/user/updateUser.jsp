<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/resource/public/tag.jsp" %>
<html>
<head>
	<meta charset="utf-8">
	<title>会员添加--知己网后台管理</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="${baseurl}/view/systemBackground/admin/layui/css/layui.css" media="all" />
	<style type="text/css">
		.layui-form-item .layui-inline{ width:33.333%; float:left; margin-right:0; }
		@media(max-width:1240px){
			.layui-form-item .layui-inline{ width:100%; float:none; }
		}
	</style>
</head>

<body class="childrenBody">
	<form class="layui-form" style="width:80%;">
		<div class="layui-form-item">
			<label class="layui-form-label">登录名</label>
			<div class="layui-input-block">
				<input type="text" class="layui-input userName"  placeholder="请输入登录名">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">电话</label>
			<div class="layui-input-block">
				<input type="text" class="layui-input phone" placeholder="请输入电话">
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
			    <label class="layui-form-label">性别</label>
			    <div class="layui-input-block userSex">
			      	<input type="radio" name="sex" value="男" title="男" checked>
			      	<input type="radio" name="sex" value="女" title="女">
			      	<input type="radio" name="sex" value="保密" title="保密">
			    </div>
		    </div>
		    <div class="layui-inline">
			    <label class="layui-form-label">会员等级</label>
				<div class="layui-input-block">
					<select name="userGrade" class="userGrade" lay-filter="userGrade">
						<option value="0">注册会员</option>
						<option value="1">中级会员</option>
				        <option value="2">高级会员</option>
				        <option value="3">超级会员</option>
				    </select>
				</div>
		    </div>
		    <div class="layui-inline">
			    <label class="layui-form-label">会员状态</label>
				<div class="layui-input-block">
					<select name="userStatus" class="userStatus" lay-filter="userStatus">
						<option value="0">正常使用</option>
						<option value="1">限制用户</option>
				    </select>
				</div>
		    </div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn submitEditInfo" lay-filter="updateUser" value="456">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		</div>
	</form>

	<script type="text/javascript" src="${baseurl}/view/systemBackground/admin/layui/layui.js"></script>
	<script type="text/javascript" src="${baseurl}/admin/page/user/allUsers.js"></script>
</body>
</html>