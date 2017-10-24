<%--
  Created by IntelliJ IDEA.
  User: admin-m
  Date: 17-10-18
  Time: 上午10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%--复选框插件--%>
    <link href="${baseurl}/resource/public/jquery-pretty-radio-checkbox/css/styles.css" rel="stylesheet"/>
    <link href="${baseurl}/resource/public/jquery-pretty-radio-checkbox/css/inserthtml.com.radios.css" rel="stylesheet"
          type="text/css"/>
    <link rel="stylesheet" type="text/css"
          href="${baseurl}/resource/public/jquery-pretty-radio-checkbox/css/default.css">
    <!--[if lte IE 8]>
    <link href="ie8.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <script src="${baseurl}/resource/public/jquery-pretty-radio-checkbox/js/modernizr.js"></script>

    <%--文件上传插件--%>
    <link href="${baseurl}/resource/public/fileUpload/css/iconfont.css" rel="stylesheet" type="text/css"/>
    <link href="${baseurl}/resource/public/fileUpload/css/fileUpload.css" rel="stylesheet" type="text/css">
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="${baseurl}/resource/public/fileUpload/js/fileUpload.js"></script>
    <style>
        ul {
            list-style-type: none;
        }

        li {
            display: inline-block;
        }

        li {
            margin: 10px 0;
        }

        input.labelauty + label {
            font: 12px "Microsoft Yahei";
        }

        input[type="checkbox"] + label {
            cursor: pointer;
            width: 105px;
            height: auto;
        }
    </style>
</head>
<body>

<div class="modal fade" id="post_a_post" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="exampleModalLabel">发布新帖</h4>
            </div>
            <div class="modal-body">
                <div>
                    <div class="form-group">
                        <label for="post_recipient-name" class="control-label">标题</label>
                        <input type="text" class="form-control" id="post_recipient-name">
                    </div>
                    <div class="form-group">
                        <label for="post_message-text" class="control-label">你的故事</label>
                        <textarea class="form-control" id="post_message-text" style="height: 250px"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="post_message-text" class="control-label">选择你的兴趣爱好或是性格特点（多选）</label>
                        <div class="center" style="width: 467px;">
                            <input type="checkbox" name="steady" id="checkbox-7-1"/><label
                                for="checkbox-7-1"><span>稳重</span></label>
                            <input type="checkbox" name="romantic" id="checkbox-7-2"/><label
                                for="checkbox-7-2"><span>浪漫</span></label>
                            <input type="checkbox" name="live_waves_cute" id="checkbox-7-3"/><label
                                for="checkbox-7-3"><span>活泼可爱</span></label>
                            <input type="checkbox" name="humor" id="checkbox-7-4"/><label
                                for="checkbox-7-4"><span>幽默</span></label>
                            <input type="checkbox" name="free" id="checkbox-7-5"/><label
                                for="checkbox-7-5"><span>自由</span></label>
                            <input type="checkbox" name="clever" id="checkbox-7-6"/><label
                                for="checkbox-7-6"><span>聪明</span></label>
                            <input type="checkbox" name="serious" id="checkbox-7-7"/><label
                                for="checkbox-7-7"><span>认真</span></label>
                            <input type="checkbox" name="simple" id="checkbox-7-8"/><label
                                for="checkbox-7-8"><span>简单</span></label>
                            <input type="checkbox" name="game" id="checkbox-7-9"/><label
                                for="checkbox-7-9"><span>游戏</span></label>
                            <input type="checkbox" name="music" id="checkbox-7-10"/><label
                                for="checkbox-7-10"><span>音乐</span></label>
                            <input type="checkbox" name="sport" id="checkbox-7-11"/><label
                                for="checkbox-7-11"><span>运动</span></label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="post_message-text" class="control-label">上传照片</label>
                    <div id="fileUploadContent" class="fileUploadContent"></div>

                    <%--<button onclick="testUpload()">提交</button>--%>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" onclick="submitMsgOfPost()">Send message</button>
        </div>
    </div>
</div>
</div>

<script type="text/javascript">
    let userImgName;
    $("#buttonOfPost").click(function () {
        $('#post_a_post').modal({backdrop: 'static', keyboard: false});
    });

    function submitMsgOfPost() {
        let steady;
        let romantic;
        let live_waves_cute;
        let humor;
        let free;
        let clever;
        let serious;
        let simple;
        let game;
        let music;
        let sport;
        let imgName;
        //获取帖子的标题和内容
        let title = $("#post_recipient-name").val();
        let content = $("#post_message-text").val();

        //获取其性格特点
        $("input[name='steady']:checked").val() === 'on' ? steady = 1 : steady = 0;
        $("input[name='romantic']:checked").val() === "on" ? romantic = 1 : romantic = 0;
        $("input[name='live_waves_cute']:checked").val() === "on" ? live_waves_cute = 1 : live_waves_cute = 0;
        $("input[name='humor']:checked").val() === "on" ? humor = 1 : humor = 0;
        $("input[name='free']:checked").val() === "on" ? free = 1 : free = 0;
        $("input[name='clever']:checked").val() === "on" ? clever = 1 : clever = 0;
        $("input[name='serious']:checked").val() === "on" ? serious = 1 : serious = 0;
        $("input[name='simple']:checked").val() === "on" ? simple = 1 : simple = 0;
        $("input[name='game']:checked").val() === "on" ? game = 1 : game = 0;
        $("input[name='music']:checked").val() === "on" ? music = 1 : music = 0;
        $("input[name='sport']:checked").val() === "on" ? sport = 1 : sport = 0;

        //获取图片的文件名
        imgName = userImgName;

        let postInfo = {
            title: title,
            content: content,
            steady: steady,
            romantic: romantic,
            live_waves_cute: live_waves_cute,
            humor: humor,
            free: free,
            clever: clever,
            serious: serious,
            simple: simple,
            game: game,
            music: music,
            sport: sport,
            img: imgName,
        }

        $.ajax({
            url: "${baseurl}/post/submitPostInfo",
            type: "post",
            data: postInfo,
            success: function (data) {
                if (data.result === true) {
                    location.reload();
                    loadPost();
//                    $('#post_a_post').hide();
                }
            }
        })
    }

    function loadPost() {
        $.ajax({
            url: "${baseurl}/post/loadPost",
            type: "post",
            success: function (data) {
                if (data.result === true) {
                    //首页显示发布的帖子
                    showPostForIndex(data.data);
                }
            }
        })
    }

    function showPostForIndex(postInfo) {
        console.log(postInfo)
        $("#showPostForIndex").html("");
        let count = 0;
        for (let item of postInfo) {
            count++;
            if (count % 2 === 0) {
                $("#showPostForIndex").append(`
            <div class="row">
                    <div class="col-md-6"><img class="img-responsive" src="` + IMAGE_PREFIX + item.img + `"
                                               align=""></div>
                    <div class="col-md-6">
                        <h3>` + item.title + `</h3>
                        <p>` + item.content + `</p>
                        <h4>Hobbies </h4>
                        <ul class="about-us-list">
                            <li class="points">
                                <span class="label label-default">默认标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-primary">主要标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-success">成功标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-info">信息标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-warning">警告标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-danger">危险标签</span>

                            </li>
                        </ul>
                        </div>
                </div>`)
            } else {
                $("#showPostForIndex").append(`
               <div class="row mrgTop30">
                    <div class="col-md-6">
                        <h3>` + item.title + `</h3>
                        <p>` + item.content + `</p>
                         <h4>Hobbies </h4>
                        <ul class="about-us-list">
                            <li class="points">
                                <span class="label label-default">默认标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-primary">主要标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-success">成功标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-info">信息标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-warning">警告标签</span>

                            </li>
                            <li class="points">
                                <span class="label label-danger">危险标签</span>

                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6"><img class="img-responsive"
                    src="` + IMAGE_PREFIX + item.img + `" align="">
                    </div>
                    </div>
                    `)
            }

        }
    }

    $(function () {
        loadPost();
    })

</script>

<%--图片上传--%>
<script type="text/javascript">
    $("#fileUploadContent").initUpload({
        "uploadUrl": "${baseurl}/post/uploadImage",//上传文件信息地址
        //"size":350,//文件大小限制，单位kb,默认不限制
        "maxFileNumber": 1,//文件个数限制，为整数
        <%--"filelSavePath":"${baseurl}/images/user",//文件上传地址，后台设置的根目录--%>
        "beforeUpload": beforeUploadFun,//在上传前执行的函数
        "onUpload": onUploadFun,//在上传后执行的函数
        //autoCommit:true,//文件是否自动上传
        "fileType": ['png', 'jpg', 'docx', 'doc']//文件类型限制，默认不限制，注意写的是文件后缀
    });

    function beforeUploadFun(opt) {
        opt.otherData = [{"name": "name", "value": "zxm"}];
    }

    function onUploadFun(opt, data) {
        userImgName = data.data; //图片上传之后的文件名
        uploadTools.uploadError(opt);//显示上传错误
        uploadTools.uploadSuccess(opt);//显示上传成功
    }

</script>

</body>
</html>
