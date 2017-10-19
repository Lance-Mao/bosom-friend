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
    <link href="${baseurl}/resource/public/jquery-pretty-radio-checkbox/css/styles.css" rel="stylesheet" />
    <link href="${baseurl}/resource/public/jquery-pretty-radio-checkbox/css/inserthtml.com.radios.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/resource/public/jquery-pretty-radio-checkbox/css/default.css">
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
    </style>
</head>
<body>

<div class="modal fade" id="post_a_post" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="exampleModalLabel">新的帖子</h4>
            </div>
            <div class="modal-body">
                <div>
                    <div class="form-group">
                        <label for="post_recipient-name" class="control-label">标题</label>
                        <input type="text" class="form-control" id="post_recipient-name">
                    </div>
                    <div class="form-group">
                        <label for="post_message-text" class="control-label">你的故事</label>
                        <textarea class="form-control" id="post_message-text"></textarea>
                    </div>
                    <%--<div class="form-group">
                        <label class="control-label">选择你的性格特点</label>
                        <div>
                            <div class="checkbox">
                                <input type="checkbox" id="steady">
                                <label for="steady">
                                    稳重
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="romantic">
                                <label for="romantic">
                                    浪漫
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="live_waves_cute">
                                <label for="live_waves_cute">
                                    活泼可爱
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="humor">
                                <label for="humor">
                                    幽默
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="free">
                                <label for="free">
                                    自由
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="clever">
                                <label for="clever">
                                    聪明
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="serious">
                                <label for="serious">
                                    认真
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="simple">
                                <label for="simple">
                                    简单
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="game">
                                <label for="game">
                                    游戏
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="music">
                                <label for="music">
                                    音乐
                                </label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="sport">
                                <label for="sport">
                                    运动
                                </label>
                            </div>
                        </div>
                    </div>--%>
                    <div>
                        <h3>您擅长的技能（复选框）</h3>
                            <div class="center" style="width: 467px;">
                                <input type="checkbox" id="checkbox-7-1" /><label for="checkbox-7-1"><span>AGREE</span></label>
                                <input type="checkbox" id="checkbox-7-2" /><label for="checkbox-7-2"><span>BUY</span></label>
                                <input type="checkbox" id="checkbox-7-3" checked /><label for="checkbox-7-3"><span>SELL</span></label>
                                <input type="checkbox" id="checkbox-7-4" /><label for="checkbox-7-4"><span>OKAY</span></label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
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
    $("#buttonOfPost").click(function () {
        $('#post_a_post').modal({backdrop: 'static', keyboard: false});
    });

    function submitMsgOfPost() {
        alert(123);
        let title = $("#post_recipient-name").val();
        let content = $("#post_message-text").val();
        alert($("#serious").prop("selected", true).val());
        alert($("#simple").prop("selected", true).val());
        alert($("#game").prop("selected", true).val());
        alert($("#music").prop("selected", true).val());
        alert($("#sport").prop("selected", true).val());
    }

</script>

<%--图片上传--%>
<script type="text/javascript">
    $("#fileUploadContent").initUpload({
        "uploadUrl": "#",//上传文件信息地址
        //"size":350,//文件大小限制，单位kb,默认不限制
        //"maxFileNumber":3,//文件个数限制，为整数
        //"filelSavePath":"",//文件上传地址，后台设置的根目录
        "beforeUpload": beforeUploadFun,//在上传前执行的函数
        //"onUpload":onUploadFun，//在上传后执行的函数
        //autoCommit:true,//文件是否自动上传
        "fileType": ['png', 'jpg', 'docx', 'doc']//文件类型限制，默认不限制，注意写的是文件后缀
    });

    function beforeUploadFun(opt) {
        opt.otherData = [{"name": "name", "value": "zxm"}];
    }

    function onUploadFun(opt, data) {
        alert(data);
        uploadTools.uploadError(opt);//显示上传错误
        uploadTools.uploadSuccess(opt);//显示上传成功
    }


    function testUpload() {
        var opt = uploadTools.getOpt("fileUploadContent");
        uploadEvent.uploadFileEvent(opt);
    }
</script>

</body>
</html>
