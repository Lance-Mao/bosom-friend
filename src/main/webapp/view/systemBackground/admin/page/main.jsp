<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/resource/public/tag.jsp" %>

<html>
<head>
	<meta charset="utf-8">
	<title>首页--layui后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="${baseurl}/view/systemBackground/admin/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="${baseurl}/view/systemBackground/admin/css/font_eolqem241z66flxr.css" media="all" />
	<link rel="stylesheet" href="${baseurl}/view/systemBackground/admin/css/main.css" media="all" />
</head>
<body class="childrenBody">
	<div class="panel_box row">
		<div class="panel col">
			<a href="javascript:;" data-url="${baseurl}/admin/page/message/message.jsp">
				<div class="panel_icon">
					<i class="layui-icon" data-icon="&#xe63a;">&#xe63a;</i>
				</div>
				<div class="panel_word newMessage">
					<span></span>
					<cite>用户留言消息</cite>
				</div>
			</a>
		</div>
		<%--<div class="panel col">--%>
			<%--<a href="javascript:;" data-url="${baseurl}/admin/page/user/allUsers.jsp">--%>
				<%--<div class="panel_icon" style="background-color:#FF5722;">--%>
					<%--<i class="iconfont icon-dongtaifensishu" data-icon="icon-dongtaifensishu"></i>--%>
				<%--</div>--%>
				<%--<div class="panel_word userAll">--%>
					<%--<span></span>--%>
					<%--<cite>新增人数</cite>--%>
				<%--</div>--%>
			<%--</a>--%>
		<%--</div>--%>
		<div class="panel col">
			<a href="javascript:;" data-url="${baseurl}/admin/page/user/allUsers.jsp">
				<div class="panel_icon" style="background-color:#009688;">
					<i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
				</div>
				<div class="panel_word userAll">
					<span></span>
					<cite>用户总数</cite>
				</div>
			</a>
		</div>
		<%--<div class="panel col">--%>
			<%--<a href="javascript:;" data-url="${baseurl}/admin/page/img/images.jsp">--%>
				<%--<div class="panel_icon" style="background-color:#5FB878;">--%>
					<%--<i class="layui-icon" data-icon="&#xe64a;">&#xe64a;</i>--%>
				<%--</div>--%>
				<%--<div class="panel_word imgAll">--%>
					<%--<span></span>--%>
					<%--<cite>图片总数</cite>--%>
				<%--</div>--%>
			<%--</a>--%>
		<%--</div>--%>
		<%--<div class="panel col">--%>
			<%--<a href="javascript:;" data-url="${baseurl}/admin/page/news/newsList.jsp">--%>
				<%--<div class="panel_icon" style="background-color:#F7B824;">--%>
					<%--<i class="iconfont icon-wenben" data-icon="icon-wenben"></i>--%>
				<%--</div>--%>
				<%--<div class="panel_word waitNews">--%>
					<%--<span></span>--%>
					<%--<cite>待审核文章</cite>--%>
				<%--</div>--%>
			<%--</a>--%>
		<%--</div>--%>
		<div class="panel col max_panel">
			<a href="javascript:;" data-url="${baseurl}/admin/page/news/newsList.jsp">
				<div class="panel_icon" style="background-color:#2F4056;">
					<i class="iconfont icon-text" data-icon="icon-text"></i>
				</div>
				<div class="panel_word allNews">
					<span></span>
					<em>文章总数</em>
					<cite>文章列表</cite>
				</div>
			</a>
		</div>
	</div>
	<blockquote class="layui-elem-quote">
		<%--<p>本模板基于Layui实现，支持除LayIM外所有的Layui组件。<a href="http://layim.layui.com/" target="_blank" class="layui-btn layui-btn-mini">前往获取LayIM授权</a>　　<span style="color:#1E9FFF;">郑重提示：网站所有数据均为静态数据，无数据库，除打开的窗口和部分小改动外所有操作刷新后无效，关闭窗口或清除缓存后，所有操作无效，请知悉</span></p>--%>
		<%--<p style="margin-top:5px;">开发文档地址：<a class="layui-btn layui-btn-mini" target="_blank" href="http://www.layui.com/doc">点此跳转</a> <a class="layui-btn layui-btn-mini layui-btn-danger" target="_blank" href="http://fly.layui.com/case/u/3198216">我要点赞</a>　　技术交流QQ群：<a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=8b7dd3ea73528c1e46c5d4e522426d60deed355caefdf481c1eacdd1b7b73bfd"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="layui后台管理模版" title="layui后台管理模版"></a>（添加时请注明来自本框架） <span style="color:#f00;"> 注：本框架未引入任何第三方组件（天气信息除外），单纯的layui+js实现的各种功能【本框架仅作为学习交流使用，如需用作商业用途，请联系作者授权，谢谢】</span></p>--%>
	</blockquote>
	<div class="row">
		<div class="sysNotice col">
			<blockquote class="layui-elem-quote title">最新文章</blockquote>
			<div class="layui-elem-quote layui-quote-nm">
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
					<legend class="userNameByNew"></legend>
				</fieldset>

				<fieldset class="layui-elem-field">
					<legend class="newTitleByNew"></legend>
					<div class="layui-field-box newsCountByNew">
						你可以在这里放任何内容，比如表单神马的
					</div>
				</fieldset>
			</div>
		</div>
		<div class="sysNotice col">
			<blockquote class="layui-elem-quote title">系统基本参数</blockquote>
			<table class="layui-table">
				<colgroup>
					<col width="150">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<td>当前版本</td>
						<td class="version"></td>
					</tr>
					<tr>
						<td>开发作者</td>
						<td class="author"></td>
					</tr>
					<tr>
						<td>网站首页</td>
						<td class="homePage"></td>
					</tr>
					<tr>
						<td>服务器环境</td>
						<td class="server"></td>
					</tr>
					<tr>
						<td>数据库</td>
						<td class="dataBase"></td>
					</tr>
					<tr>
						<td>最大上传限制</td>
						<td class="maxUpload"></td>
					</tr>
					<tr>
						<td>当前用户权限</td>
						<td class="userRights"></td>
					</tr>
				</tbody>
			</table>
			<blockquote class="layui-elem-quote title">用户动态<i class="iconfont icon-new1"></i></blockquote>
			<table class="layui-table" lay-skin="line">
				<colgroup>
					<col>
					<col width="200">
				</colgroup>
				<tbody class="hot_news"></tbody>
			</table> 
		</div>
	</div>

	<script type="text/javascript" src="${baseurl}/view/systemBackground/admin/layui/layui.js"></script>
	<script type="text/javascript" src="${baseurl}/view/systemBackground/admin/js/main.js"></script>
	<script type="text/javascript" src="${baseurl}/resource/public/js/jquery-3.2.1.js"></script>
</body>
</html>