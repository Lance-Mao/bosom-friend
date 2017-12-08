var $;
layui.config({
    base: "js/"
}).use(['form', 'layer', 'jquery'], function () {
    var form = layui.form(),
        layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage;
    $ = layui.jquery;

    var addUserArray = [], addUser;
    form.on("submit(addUser)", function (data) {
        //是否添加过信息
        if (window.sessionStorage.getItem("addUser")) {
            addUserArray = JSON.parse(window.sessionStorage.getItem("addUser"));
        }

        var userStatus, userGrade, userEndTime;
        //会员等级
        if (data.field.userGrade == '0') {
            userGrade = "注册会员";
        } else if (data.field.userGrade == '1') {
            userGrade = "中级会员";
        } else if (data.field.userGrade == '2') {
            userGrade = "高级会员";
        } else if (data.field.userGrade == '3') {
            userGrade = "超级会员";
        }
        //会员状态
        if (data.field.userStatus == '0') {
            userStatus = "正常使用";
        } else if (data.field.userStatus == '1') {
            userStatus = "限制用户";
        }

        // var usersId = new Date().getTime();//id
        var userName = $(".userName").val();  //登录名
        var phone = $(".phone").val();	 //邮箱
        var userSex = data.field.sex; //性别
        // userEndTime = formatTime(new Date());  //登录时间
        $.post(baseUrl + "/admin/addUser", {
            userName: userName,
            phone: phone,
            sex: userSex,
            userStatus: userStatus,
            userGrade: userGrade
        }, function (data) {
            if (data.result) {
                // let index = top.layer.msg('数据提交中，请稍候', {icon: 16, time: false, shade: 0.8});
                // setTimeout(TT(index), 2000);
                let index = layer.msg('修改成功！')
                setTimeout("layer.close(index)", 2000);
                //刷新父页面
                parent.location.reload();
            }
        })
        // userStatus = userStatus ; //会员等级
        // userGrade = userGrade ; //会员状态

        // addUserArray.unshift(JSON.parse(addUser));
        // window.sessionStorage.setItem("addUser", JSON.stringify(addUserArray));
        //弹出loading

        // return false;
    })
})

function TT(index) {
    top.layer.close(index);
    top.layer.msg("用户添加成功！");
    layer.closeAll("iframe");
    //刷新父页面d
    parent.location.reload();
}

//格式化时间
function formatTime(_time) {
    var year = _time.getFullYear();
    var month = _time.getMonth() + 1 < 10 ? "0" + (_time.getMonth() + 1) : _time.getMonth() + 1;
    var day = _time.getDate() < 10 ? "0" + _time.getDate() : _time.getDate();
    var hour = _time.getHours() < 10 ? "0" + _time.getHours() : _time.getHours();
    var minute = _time.getMinutes() < 10 ? "0" + _time.getMinutes() : _time.getMinutes();
    return year + "-" + month + "-" + day + " " + hour + ":" + minute;
}
