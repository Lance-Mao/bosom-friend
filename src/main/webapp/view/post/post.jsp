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
</head>

<style>
    <%--样式设置--%>
</style>
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
                        <label for="recipient-name" class="control-label">标题</label>
                        <input type="text" class="form-control" id="recipient-name">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="control-label">你的故事</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="recipient-name" class="control-label">选择你的性格特点</label>
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
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="control-label">上传照片</label>
                        <div class="form-group">
                            <input id="file-1" type="file" multiple class="file-loading" >
                            <div id="errorBlock" class="help-block"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Send message</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $("#buttonOfPost").click(function () {
        $('#post_a_post').modal({backdrop: 'static', keyboard: false});
    });
</script>

</body>
</html>
