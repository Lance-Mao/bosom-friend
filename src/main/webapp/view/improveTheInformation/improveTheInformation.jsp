<%--
  Created by IntelliJ IDEA.
  User: admin-m
  Date: 17-10-18
  Time: 下午1:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--文件上传插件--%>
    <link href="${baseurl}/resource/public/fileUpload/css/iconfont.css" rel="stylesheet" type="text/css"/>
    <link href="${baseurl}/resource/public/fileUpload/css/fileUpload.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${baseurl}/resource/public/fileUpload/js/fileUpload.js"></script>
</head>
<body>

<div class="modal fade" id="improveTheInformation" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="exampleModalLabel">修改或完善信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="userName" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="userName" placeholder="用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label for="job" class="col-sm-2 control-label">工作</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="job" placeholder="工作">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">手机号</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="phone" placeholder="手机号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthday" class="col-sm-2 control-label">生日</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="birthday" placeholder="出生日期">
                    </div>
                </div>
                <div class="form-group">
                    <label for="placeOfResidence" class="col-sm-2 control-label">居住地</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="placeOfResidence" placeholder="请输入现居住地">
                    </div>
                </div>
                <div class="form-group">
                    <label for="signature" class="col-sm-2 control-label">个性签名</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" id="signature"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label">上传照片</label>
                    <div id="fileUploadContentOfLabel" class="fileUploadContent"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="submitInfoByUpdate()">Send message</button>
            </div>
        </div>
    </div>
</div>


<script>

    $("#openImproveTheInformation").click(function () {
        $('#improveTheInformation').modal({backdrop: 'static', keyboard: false});
    })
</script>


<%--图片上传--%>
<script type="text/javascript">
    let userImgNameByUserInfo;
    $("#fileUploadContentOfLabel").initUpload({
        "uploadUrl": "${baseurl}/information/informationByImg",//上传文件信息地址
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
        userImgNameByUserInfo = data.data; //图片上传之后的文件名
        uploadTools.uploadError(opt);//显示上传错误
        uploadTools.uploadSuccess(opt);//显示上传成功
    }

    $(function () {
        $.ajax({
            url: "${baseurl}/information/loadInformation",
            type: "post",
            success: function (data) {
                if (data.result) {
                    let dataInfo = data.data[0];
                    if (dataInfo.user_name !== null) {
                        $("#userName").val(dataInfo.user_name);
                        $("#footerUserName").val(dataInfo.user_name); //显示个人中心模块中的信息
                    }
                    if (dataInfo.job !== null) {
                        $("#job").val(dataInfo.job);
                        $("#footerJob").val(dataInfo.job);
                    }
                    if (dataInfo.phone !== null) {
                        $("#phone").val(dataInfo.phone);
                        $("#footerPhone").val(dataInfo.phone);
                    }
                    if (dataInfo.birthday !== null) {
                        $("#birthday").val(dataInfo.birthday);
                        $("#footerBirthday").val(dataInfo.birthday);
                    }
                    if (dataInfo.living !== null) {
                        $("#placeOfResidence").val(dataInfo.living);
                        $("#footerLiving").val(dataInfo.living);
                    }
                    if (dataInfo.signature !== null) {
                        $("#signature").val(dataInfo.signature);
                        $("#footerContent").val(dataInfo.signature);
                    }
                    if (dataInfo.userImg !== null) {
                        $("#showMyImgInFooter").prop("src", IMAGE_PREFIX + dataInfo.userImg);
                    }
                }
            }
        })
    })

    function submitInfoByUpdate() {
        let userName = $("#userName").val();
        let job = $("#job").val();
        let phone = $("#phone").val();
        let birthday = $("#birthday").val();
        let placeOfResidence = $("#placeOfResidence").val();
        let signature = $("#signature").val();
        let userImg = userImgNameByUserInfo;

        let userInfoByUpdate = {
            userName:userName,
            job:job,
            phone:phone,
            birthday:birthday,
            living:placeOfResidence,
            signature:signature,
            userImg:userImg,
        }

        $.ajax({
            url: "${baseurl}/information/submitInfoByUpdate",
            type: "post",
            data: userInfoByUpdate,
            success: function (data) {
                if (data.result) {
                    location.reload();
                    alert("更新信息成功！！！");
                }
            }
        })
    }
</script>

</body>
</html>
