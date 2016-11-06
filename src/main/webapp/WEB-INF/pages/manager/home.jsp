<%--
  Created by IntelliJ IDEA.
  User: Lingling
  Date: 2016/10/29
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>后台管理页面</title>
    <jsp:include page="common.jsp"></jsp:include>

</head>

<body class="no-skin">
    <!--头部（logo、消息、留言、用户）-->
    <jsp:include page="header.jsp"></jsp:include>

    <div class="main-container" id="main-container">
        <!--左边的菜单栏-->
        <jsp:include page="menu.jsp"></jsp:include>

        <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs" id="breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="ace-icon fa fa-home home-icon"></i>
                            <a href="${pageContext.request.contextPath}/manager/home">主页</a>
                        </li>
                        <li class="active">新建笔记</li>
                    </ul>
                </div>
            </div>
            <div style="background-color: rgba(212, 212, 212, 0.6);width: 100%;height: 620px; margin-right: 35px;">
                <div style="float: left; width: 80%;margin-left: 15px; margin-top: 10px;">
                    <form action="${pageContext.request.contextPath}/manager/saveNote">
                        <div  style="width: 100%; height: 50px;">
                                <select class="form-control"name="noteId" id="form-field-select-1" style=" height: 37px;margin-bottom: 10px;float: left;">
                                    <option value="">选择笔记本</option>
                                </select>
                            </div>

                        <div  style="width: 100%; height: 50px;">
                            <input type="text" name="article_name" class="form-control" id="title" placeholder="输入笔记的名称">
                        </div>
                        <div id="div1" style="width: 100%; height: 400px;border-top:1px solid rgb(173, 164, 164);">
                            <p>请输入内容...</p>
                        </div>
                        <div class="clearfix">
                            <input type="button"  id="commit" value="确定" class="width-35 pull-right btn btn-sm btn-primary" style=" width:70px !important;
    margin-top: 10px;">
                        </div>
                    </form>
                </div>
            </div>

        </div>
        <!--底部的页面版权说明-->
        <jsp:include page="foot.jsp"></jsp:include>
    </div>
    <script type="text/javascript">
        window.onload =function getOption(){
            var url = "${pageContext.request.contextPath}/manager/menus";
            $.post(url,function(data){
                for(var i=0; i<data.length; i++){
                    var varItem = new Option(data[i].note_name,data[i].note_id);
                    document.getElementById("form-field-select-1").options.add(varItem);
                }
            });
        }
    </script>
    <script type="text/javascript">
        var c_text;
        var abstract;
        var editor = new wangEditor('div1');
        $(function () {
            // 上传图片
            editor.config.uploadImgUrl = '${pageContext.request.contextPath}/manager/upload';
            editor.config.uploadImgFileName = 'fileName';
            editor.create();
        });
        $("#commit").click(function(){
            abstract = editor.$txt.formatText();
            c_text =editor.$txt.html();
            var noteId = $("#form-field-select-1").val().trim();
            var title = $("#title").val().trim();
            var url ="${pageContext.request.contextPath}/manager/saveNote";
            var args = {"note_id":noteId,"title":title,"abs_text":abstract,"content":c_text};
            $.post(url,args,function(data){
                if(data=="success"){
                    alert("保存成功！")
                    window.location.reload();
                }else{
                    alert("服务器错误，保存失败！");
                }
            });
        });
    </script>
</body>
</html>
