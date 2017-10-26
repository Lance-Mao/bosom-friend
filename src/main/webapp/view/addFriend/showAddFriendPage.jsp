<%--
  Created by IntelliJ IDEA.
  User: admin-m
  Date: 17-10-26
  Time: 下午9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div class="modal fade" id="showAddFriendPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">添加好友</h4>
            </div>
            <div class="modal-body">
                <h3>是否添加对方为好友？</h3>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">否</button>
                <button type="button" class="btn btn-primary">是</button>
            </div>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
    $("#addFriend").click(function () {
        $('#post_a_post').modal({backdrop: 'static', keyboard: false});
    });ss
</script>

</html>
