layui.config({
	base : "js/"
}).use(['form','element','layer','jquery'],function(){
	var form = layui.form(),
		layer = parent.layer === undefined ? layui.layer : parent.layer,
		element = layui.element(),
		$ = layui.jquery;

	$(".panel a").on("click",function(){
		window.parent.addTab($(this));
	})

	//动态获取文章总数和待审核文章数量,最新文章
	$.get(baseUrl+"admin/getAllNews",
		function(data){
		// console.log("文章列表："+JSON.stringify(data))
            let dataInfo = data.data;
			var waitNews = [];
			$(".allNews span").text(dataInfo.length);  //文章总数
			for(var i=0;i<dataInfo.length;i++){
				var newsStr = dataInfo[i];
				if(newsStr["newsStatus"] == "待审核"){
					waitNews.push(newsStr);
				}
			}
			$(".waitNews span").text(waitNews.length);  //待审核文章
			//加载最新文章
			var hotNewsHtml = '';
			for(var i=0;i<5;i++){
				hotNewsHtml += '<tr>'
		    	+'<td align="left">'+dataInfo[i].userName+'发布了《'+dataInfo[i].title+'》'+'</td>'
		    	+'<td>'+'发布时间：'+dataInfo[i].date+'</td>'
		    	+'</tr>';
			}
            $(".userNameByNew").text(dataInfo[0].userName);
            $(".newTitleByNew").text(dataInfo[0].title);
            $(".newsCountByNew").text(dataInfo[0].content);
			$(".hot_news").html(hotNewsHtml);
		}
	)

	//图片总数
	$.get("../json/images.json",
		function(data){
			$(".imgAll span").text(data.length);
		}
	)

	//用户数
	$.get(baseUrl+"admin/amountOfUsers",
		function(data){
			$(".userAll span").text(data.data);
		}
	)

	//用户留言数量
	$.get(baseUrl+"admin/getUserMessageNumber",
		function(data){
			$(".newMessage span").text(data.data);
		}
	)


	//数字格式化
	$(".panel span").each(function(){
		$(this).html($(this).text()>9999 ? ($(this).text()/10000).toFixed(2) + "<em>万</em>" : $(this).text());	
	})

	//系统基本参数
	if(window.sessionStorage.getItem("systemParameter")){
		var systemParameter = JSON.parse(window.sessionStorage.getItem("systemParameter"));
		fillParameter(systemParameter);
	}else{
		$.ajax({
			url : "../json/systemParameter.json",
			type : "get",
			dataType : "json",
			success : function(data){
				fillParameter(data);
			}
		})
	}

	//填充数据方法
 	function fillParameter(data){
		console.log("系统参数："+JSON.stringify(data))
 		//判断字段数据是否存在
 		function nullData(data){
 			if(data == '' || data == "undefined"){
 				return "未定义";
 			}else{
 				return data;
 			}
 		}
 		$(".version").text(nullData(data.version));      //当前版本
		$(".author").text(nullData(data.author));        //开发作者
		$(".homePage").text(nullData(data.homePage));    //网站首页
		$(".server").text(nullData(data.server));        //服务器环境
		$(".dataBase").text(nullData(data.dataBase));    //数据库
		$(".maxUpload").text(nullData(data.maxUpload));    //最大上传限制
		$(".userRights").text(nullData(data.userRights));//当前用户权限
 	}

})
