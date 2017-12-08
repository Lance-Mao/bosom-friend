<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/resource/public/tag.jsp" %>
<html>
<head>
	<meta charset="utf-8">
	<title>文章列表--layui后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="${baseurl}/view/systemBackground/admin/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="${baseurl}/view/systemBackground/admin/css/font_eolqem241z66flxr.css" media="all" />
	<link rel="stylesheet" href="${baseurl}/view/systemBackground/admin/css/news.css" media="all" />
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote news_search">
		<div class="layui-inline">
		    <div class="layui-input-inline">
		    	<input type="text" value="" placeholder="请输入关键字" class="layui-input search_input">
		    </div>
		    <a class="layui-btn search_btn">查询</a>
		</div>
		<%--<div class="layui-inline">--%>
			<%--<a class="layui-btn layui-btn-normal newsAdd_btn">添加文章</a>--%>
		<%--</div>--%>
		<div class="layui-inline">
			<a class="layui-btn recommend" style="background-color:#5FB878">推荐文章</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn audit_btn">审核文章</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-danger batchDel">批量删除</a>
		</div>

	</blockquote>
	<div class="layui-form news_list">
	  	<table class="layui-table">
		    <colgroup>
				<col width="50">
				<col>
				<col width="9%">
				<col width="9%">
				<col width="9%">
				<col width="9%">
				<col width="9%">
				<col width="15%">
		    </colgroup>
		    <thead>
				<tr>
					<th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose" id="allChoose"></th>
					<th style="text-align:left;">文章标题</th>
					<th>发布人</th>
					<th>审核状态</th>
					<th>浏览权限</th>
					<th>是否展示</th>
					<th>发布时间</th>
					<th>操作</th>
				</tr> 
		    </thead>
		    <tbody class="news_content"></tbody>
		</table>
	</div>
	<div id="page"></div>

	<form class="layui-form" style="display: none" id="showUpdateInfo">
		<div class="layui-form-item">
			<label class="layui-form-label">文章标题</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input newsName"  lay-verify="required" placeholder="请输入文章标题">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">自定义属性</label>
			<div class="layui-input-block">
				<input type="checkbox" name="shenhe" class="newsStatus" title="审核">
				<input type="checkbox" name="show" class="isShow" title="展示">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">文章作者</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input newsAuthor" lay-verify="required" placeholder="请输入文章作者">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">浏览权限</label>
			<div class="layui-input-inline">
				<select name="browseLook" class="newsLook" lay-filter="browseLook">
					<option value="0">开放浏览</option>
					<option value="1">会员浏览</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">发布时间</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input newsTime" placeholder="发布日期" lay-verify="date" onclick="layui.laydate({elem:this})">
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit="" lay-filter="addNews">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
	<script type="text/javascript" src="${baseurl}/view/systemBackground/admin/layui/layui.js"></script>
	<script type="text/javascript" src="${baseurl}/admin/page/news/newsList.js"></script>
	<script type="text/javascript" src="${baseurl}/admin/page/news/newsUpdate.js"></script>
</body>
</html>