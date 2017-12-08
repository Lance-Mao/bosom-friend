let currentlyEditingUser;
let currentEditPopup;
let userNameEdit;
let phoneEdit;
layui.config({
    base: "js/"
}).use(['form', 'layer', 'jquery', 'laypage'], function () {
    var form = layui.form(),
        layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage,
        $ = layui.jquery;

    //加载页面数据
    var usersData = '';
    $.get(baseUrl + "admin/showUserInfo", function (data) {
        usersData = data.data;
        console.log(usersData);
        // if(window.sessionStorage.getItem("addUser")){
        // 	var addUsers = window.sessionStorage.getItem("addUser");
        // 	usersData = JSON.parse(addUsers).concat(usersData);
        // }
        //执行加载数据的方法
        usersList(usersData);
    })

    //查询
    $(".search_btn").click(function () {
        var userArray = [];
        if ($(".search_input").val() != '') {
            var index = layer.msg('查询中，请稍候', {icon: 16, time: false, shade: 0.8});
            setTimeout(function () {
                $.ajax({
                    url: "../../json/usersList.json",
                    type: "get",
                    dataType: "json",
                    success: function (data) {
                        if (window.sessionStorage.getItem("addUsers")) {
                            var addUsers = window.sessionStorage.getItem("addUsers");
                            usersData = JSON.parse(addUsers).concat(data);
                        } else {
                            usersData = data;
                        }
                        for (var i = 0; i < usersData.length; i++) {
                            var usersStr = usersData[i];
                            var selectStr = $(".search_input").val();

                            function changeStr(data) {
                                var dataStr = '';
                                var showNum = data.split(eval("/" + selectStr + "/ig")).length - 1;
                                if (showNum > 1) {
                                    for (var j = 0; j < showNum; j++) {
                                        dataStr += data.split(eval("/" + selectStr + "/ig"))[j] + "<i style='color:#03c339;font-weight:bold;'>" + selectStr + "</i>";
                                    }
                                    dataStr += data.split(eval("/" + selectStr + "/ig"))[showNum];
                                    return dataStr;
                                } else {
                                    dataStr = data.split(eval("/" + selectStr + "/ig"))[0] + "<i style='color:#03c339;font-weight:bold;'>" + selectStr + "</i>" + data.split(eval("/" + selectStr + "/ig"))[1];
                                    return dataStr;
                                }
                            }

                            //用户名
                            if (usersStr.userName.indexOf(selectStr) > -1) {
                                usersStr["userName"] = changeStr(usersStr.userName);
                            }
                            //用户邮箱
                            if (usersStr.userEmail.indexOf(selectStr) > -1) {
                                usersStr["userEmail"] = changeStr(usersStr.userEmail);
                            }
                            //性别
                            if (usersStr.userSex.indexOf(selectStr) > -1) {
                                usersStr["userSex"] = changeStr(usersStr.userSex);
                            }
                            //会员等级
                            if (usersStr.userGrade.indexOf(selectStr) > -1) {
                                usersStr["userGrade"] = changeStr(usersStr.userGrade);
                            }
                            if (usersStr.userName.indexOf(selectStr) > -1 || usersStr.userEmail.indexOf(selectStr) > -1 || usersStr.userSex.indexOf(selectStr) > -1 || usersStr.userGrade.indexOf(selectStr) > -1) {
                                userArray.push(usersStr);
                            }
                        }
                        usersData = userArray;
                        usersList(usersData);
                    }
                })

                layer.close(index);
            }, 2000);
        } else {
            layer.msg("请输入需要查询的内容");
        }
    })

    //添加会员
    $(".usersAdd_btn").click(function () {
        var index = layui.layer.open({
            title: "添加会员",
            type: 2,
            content: "addUser.jsp",
            success: function (layero, index) {
                layui.layer.tips('点击此处返回文章列表', '.layui-layer-setwin .layui-layer-close', {
                    tips: 3
                });
            }
        })
        //改变窗口大小时，重置弹窗的高度，防止超出可视区域（如F12调出debug的操作）
        $(window).resize(function () {
            layui.layer.full(index);
        })
        layui.layer.full(index);
    })

    //全选
    form.on('checkbox(allChoose)', function (data) {
        var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]:not([name="show"])');
        child.each(function (index, item) {
            item.checked = data.elem.checked;
        });
        form.render('checkbox');
    });

    //通过判断文章是否全部选中来确定全选按钮是否选中
    form.on("checkbox(choose)", function (data) {
        var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]:not([name="show"])');
        var childChecked = $(data.elem).parents('table').find('tbody input[type="checkbox"]:not([name="show"]):checked')
        if (childChecked.length == child.length) {
            $(data.elem).parents('table').find('thead input#allChoose').get(0).checked = true;
        } else {
            $(data.elem).parents('table').find('thead input#allChoose').get(0).checked = false;
        }
        form.render('checkbox');
    })

    //操作
    // $(".users_edit").click(function () {
    //     alert(123);
    // })
    $("body").on("click", ".users_edit", function () {  //编辑
        currentlyEditingUser = $(this).attr("data-id");
        // userNameEdit = $(this).parent().find(".userName").val();
        // phoneEdit = $(this).parent.find(".phone").val();
        currentEditPopup = layui.layer.open({
            type: 2,
            title: "会员信息",
            area: ["100%", "100%"],
            content: "updateUser.jsp",
            success: function (layero, index) {
                window.sessionStorage.setItem("userId", currentlyEditingUser);
                // window.sessionStorage.setItem("userName", userNameEdit);
                // window.sessionStorage.setItem("phone", phoneEdit);
            }
        });
    })

    //提交编辑信息
    $("body").on("click", ".submitEditInfo", function () {
        var _this = $(this);
        var userStatus, userGrade, userEndTime;
        //会员等级
        if ($(".userGrade").val() == '0') {
            userGrade = "注册会员";
        } else if ($(".userGrade").val() == '1') {
            userGrade = "中级会员";
        } else if ($(".userGrade").val() == '2') {
            userGrade = "高级会员";
        } else if ($(".userGrade").val() == '3') {
            userGrade = "超级会员";
        }
        //会员状态
        if ($(".userStatus").val() == '0') {
            userStatus = "正常使用";
        } else if ($(".userStatus").val() == '1') {
            userStatus = "限制用户";
        }

        // var usersId = new Date().getTime();//id
        var userName = $(".userName").val();  //登录名
        var phone = $(".phone").val();	 //邮箱
        var userSex = $(".sex").val(); //性别

        let id = window.sessionStorage.getItem("userId");
        $.post(baseUrl + "admin/updateUser",
            {
                id: id,
                userName: userName,
                phone: phone,
                sex: userSex,
                userStatus: userStatus,
                userGrade: userGrade
            }, function (data) {
                if (data.result) {
                    let index = layer.msg('修改成功！')
                    setTimeout("layer.close(index)", 2000);
                    //刷新父页面
                    parent.location.reload();
                }
            })
    })

    function TT(index) {
        top.layer.close(index);
        top.layer.msg("用户添加成功！");
        layer.closeAll("iframe");
        //刷新父页面d
        parent.location.reload();
    }

    $("body").on("click", ".users_del", function () {  //删除
        var _this = $(this);
        layer.confirm('确定删除此用户？', {icon: 3, title: '提示信息'}, function (index) {
            var id = _this.attr("data-id");
            $.post(baseUrl + "admin/delUser", {id: id}, function (data) {
                if (data.result) {
                    let index = layer.msg('删除成功！')
                    setTimeout("layer.close(index)", 2000);
                    _this.parents("tr").remove();
                    //刷新父页面
                    // parent.location.reload();
                }
            });
            // for (var i = 0; i < usersData.length; i++) {
            //     if (usersData[i].id == _this.attr("data-id")) {
            //         usersData.splice(i, 1);
            //         usersList(usersData);
            //     }
            // }
        });
    })

    function usersList() {
        //渲染数据
        function renderDate(data, curr) {
            var dataHtml = '';
            data = data.concat().splice(curr*nums-nums, nums);
            if (data.length != 0) {
                for (var i = 0; i < data.length; i++) {
                    dataHtml += '<tr>'
                        + '<td><input type="checkbox" name="checked" lay-skin="primary" lay-filter="choose"></td>'
                        + '<td>' + data[i].user_name + '</td>'
                        + '<td>' + data[i].phone + '</td>'
                        + '<td>' + data[i].sex + '</td>'
                        + '<td>' + data[i].userGrade + '</td>'
                        + '<td>' + data[i].userStatus + '</td>'
                        + '<td>'
                        + '<a class="layui-btn layui-btn-mini users_edit" data-id="' + data[i].id + '"><i class="iconfont icon-edit"></i> 编辑</a>'
                        + '<a class="layui-btn layui-btn-danger layui-btn-mini users_del" data-id="' + data[i].id + '"><i class="layui-icon">&#xe640;</i> 删除</a>'
                        + '</td>'
                        + '</tr>';
                }
            } else {
                dataHtml = '<tr><td colspan="8">暂无数据</td></tr>';
            }
            return dataHtml;
        }

        //分页
        var nums = 10; //每页出现的数据量
        laypage({
            cont: "page",
            pages: Math.ceil(usersData.length / nums),
            jump: function (obj) {
                $(".users_content").html(renderDate(usersData, obj.curr));
                $('.users_list thead input[type="checkbox"]').prop("checked", false);
                form.render();
            }
        })
    }

})