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

   <%--${baseurl} 获取页面相对路径--%>

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

        hr {
            height: 30px;
            border-style: solid;
            border-color: black;
            border-width: 1px 0 0 0;
            border-radius: 20px;
        }

        hr:before {
            display: block;
            content: "";
            height: 30px;
            margin-top: -31px;
            border-style: solid;
            border-color: black;
            border-width: 0 0 1px 0;
            border-radius: 20px;
        }

        .points {
            margin-right: 20px;
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
                        <label for="post_message-text" class="control-label">选择与你相符的标签（多选）</label>
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
                    <label for="post_message-text" class="control-label">添加照片</label>
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

<div class="modal fade" id="searchYourOtherHalf" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="searchYourFriend">搜索好友</h4>
            </div>
            <div class="modal-body">
                <div>
                    <div class="form-group">
                        <label for="userNameForSearch" class="control-label">昵称:</label>
                        <input type="text" class="form-control" id="userNameForSearch">
                    </div>
                    <div class="form-group">
                        <label for="postForSearch" class="control-label">帖子名称:</label>
                        <input type="text" class="form-control" id="postForSearch">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="searchYouOtherHalf()" data-dismiss="modal"><a href="#showPosts"></a>搜索</button>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    let userImgName;
    let currentUserName; //当前用户姓名
    let currentLoginUser;  //当前登陆用户
    let whetherItIsAFriend; //是否为好友
    let whetherItIsAFriends; //
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
        };

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
                    //显示我的添加的好友
                    showMyFriend();
                }
            }
        })
    }

    function showPostForIndex(postInfo) {
        $("#showPostForIndex").html("");
        let count = 0;
        for (let item of postInfo) {
            count++;
            let labels;
            labels = {
                free: item.free,
                game: item.game,
                humor: item.humor,
                music: item.music,
                romantic: item.romantic,
                serious: item.serious,
                simple: item.simple,
                sport: item.sport,
                steady: item.steady
            };

            currentUserName = item.userName;
            $("#showPostForIndex").append(`
               <div class="row mrgTop30">
                    <div class="col-md-6">
                    <div>
                    <img style="border-radius:95px;width: 50px;" src="` + IMAGE_PREFIX + item.img + `"><span style="font-size: 20px;margin: 0 15px">` + item.userName + `</span>
                    <button type="button" class="btn btn-lg btn-default addFriend" data-toggle="modal"  id="addFriend"
                                    data-target="#showAddFriendPage" data-whatever="@mdo" title="点击添加` + item.userName + `为好友！！">添加好友
                            </button>
</div>
<br>
<br>
                        <h3>` + item.title + `</h3>
                        <p>` + item.content + `</p>
                         <h4>相关标签 </h4>
                        <ul class="about-us-list">
                            ` + showLabel(labels) + `
                        </ul>
                    </div>
                    <div class="col-md-6"><img style="width: 600px;height: 400px;margin-top: 120px" class="img-responsive"
                    src="` + IMAGE_PREFIX + item.img + `" align="">
                    <div>
                    <br><br>
                    <span><i class="fa fa-eye fa-3lg"></i>&nbsp;预览(1000)&nbsp;</span>
                    <span><i class="fa fa-heart fa-3lg"></i>&nbsp;喜欢(1000)</span>
</div>
                    </div>
                    </div>
                    <hr>
                    `)
            isFriend();
            //判断当前用户是否与发布帖子的用户为同一个人,如果不是则现实添加好友按钮
            currentLoginUser === currentUserName ? $(".addFriend").hide() : "";
            if (count === 3) {
                break;
            }
        }
    }

    function showLabel(labels) {
        let html_ = "";
        if (labels.free === "1") {
            html_ += `<li class="points">
                                <span class="label label-success">自由</span>
                            </li>`
        }
        if (labels.game === "1") {
            html_ += `<li class="points">
                                <span class="label label-primary">游戏</span>
                            </li>`
        }
        if (labels.humor === "1") {
            html_ += `<li class="points">
                                <span class="label label-success">幽默</span>
                            </li>`
        }
        if (labels.music === "1") {
            html_ += `<li class="points">
                                <span class="label label-info">音乐</span>
                            </li>`
        }
        if (labels.romantic === "1") {
            html_ += `<li class="points">
                                <span class="label label-success">浪漫</span>
                            </li>`
        }
        if (labels.serious === "1") {
            html_ += `<li class="points">
                                <span class="label label-danger">认真</span>
                            </li>`
        }
        if (labels.simple === "1") {
            html_ += `<li class="points">
                                <span class="label label-warning">简单</span>
                            </li>`
        }
        if (labels.sport === "1") {
            html_ += `<li class="points">
                                <span class="label label-info">运动</span>
                            </li>`
        }
        if (labels.steady === "1") {
            html_ += `<li class="points">
                                <span class="label label-warning">稳重</span>
                            </li>`
        }

        return html_;
    }

    function getTheUurrentUser() {
        $.ajax({
            url: "${baseurl}/user/getUserName",
            type: "post",
            success: function (data) {
                currentLoginUser = data.data;
            }
        })
    }

    function isFriend() {
        let friendInfo = {
            userId: currentLoginUser,
            friendId: currentUserName,
        }
        $.ajax({
            url: "${baseurl}/addFriend/isFriend",
            type: "post",
            data: friendInfo,
            success: function (data) {
                if (data.result) {
                    if (data.data.length !== 0) {
                        whetherItIsAFriends = true;  //将查询出来的结果即双方是否为好友赋与全局变量;
                    } else {
                        whetherItIsAFriends = false;
                    }
                    //判断该用户是否当前登陆用户互为好友
                    whetherItIsAFriends === true ? $(".addFriend").text("互为好友") : null;
                    whetherItIsAFriends === true ? $(".addFriend").prop("disabled", true) : null;
                }
            }
        })
    }

    //显示已添加的好友
    function showMyFriend() {
        $.ajax({
            url: "${baseurl}/addFriend/showMyFriend",
            type: "post",
            success: function (data) {
                if (data.result) {
                    $("#showMyFriend").html("");
                    for (let item of data.data) {
                        $("#showMyFriend").append(`
                    <div class="col-md-3 centered"><img class="img img-circle"
                                                        src="${baseurl}/images/user/` + item.userImg + `"
                                                        height="120px" width="120px" alt="">
                        <h4><strong>昵称：` + item.user_name + `</strong></h4>
                        <p>性别：` + item.sex + `</p>
                        <p>工作：` + item.job + `</p>
                        <p>现居住地：` + item.living + `</p>
                        <p>出生日期：` + item.birthday + `</p>
                        <br/></div>`);
                    }
                }
            }
        })
    }

    function tabToShowPosts() {
        $("#pagerArea").cypager({
            pg_size: 3, pg_nav_count: 5, pg_total_count: 4, pg_call_fun: function (count) {
                let currentIndex = count;
                let pageSize = 3;
                let pageInfo = {
                    currentIndex: currentIndex,
                    pageSize: pageSize
                };
                $.ajax({
                    url: "${baseurl}/post/tabToShowPosts",
                    type: "post",
                    data: pageInfo,
                    success: function (data) {
                        if (data.result) {
                            showPostForIndex(data.data);
                        }
                    }
                })
            }
        });
    }

    function searchYouOtherHalf() {
        let userName = $("#userNameForSearch").val();
        let postTitleName = $("#postForSearch").val();

        let searchInfo = {
            userName: userName,
            postTitleName: postTitleName
        };

        $.ajax({
            url: "${baseurl}/post/searchYouOtherHalf",
            type: "post",
            data: searchInfo,
            success: function (data) {
                if (data.result) {
                    showPostForIndex(data.data);
                }
            }
        })
    }

    $(function () {
        loadPost();
        getTheUurrentUser();
        tabToShowPosts();
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
