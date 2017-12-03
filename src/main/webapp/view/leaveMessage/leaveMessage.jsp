<%--
  Created by IntelliJ IDEA.
  User: admin-m
  Date: 17-10-18
  Time: 下午1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="modal fade" id="leaveMessage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
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
                        <label for="recipient-email" class="control-label">联系邮箱:</label>
                        <input type="text" class="form-control" id="recipient-email">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="control-label">遇到的问题:</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="sendMessage()">提交留言</button>
            </div>
        </div>
    </div>
</div>

</body>

<script>
    function sendMessage() {
        let email = $("#recipient-email").val();
        let content = $("#message-text").val();
        if (email != null && content != null) {
            $.post(baseUrl + "information/leaveMessage",{email:email,content:content},function (data){
                if (data.result === true) {
                    alert("留言添加成功！！！");
                    setTimeout("location.reload()", 1000);
                }
            })
        }
    }
</script>

</html>
