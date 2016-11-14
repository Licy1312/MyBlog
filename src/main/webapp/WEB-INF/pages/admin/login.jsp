<%--
  Created by IntelliJ IDEA.
  User: Lingling
  Date: 2016/10/29
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登陆</title>
    <!--static resource-->
    <jsp:include page="common.jsp"></jsp:include>
</head>
<body class="login-layout">
<div class="main-container">
    <div class="main-content" style="width: 100%;">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1" style="margin-top: 8%;">
                <div class="login-container">
                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-coffee green"></i>
                                        欢迎你登陆博客后台管理系统
                                    </h4>

                                    <div class="space-6"></div>

                                    <form action="${pageContext.request.contextPath}/admin/iden">
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id ="username" type="text" class="form-control" placeholder="账号" />
															<i class="ace-icon fa fa-user"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" id="password" class="form-control" placeholder="密码" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

                                            <div class="space"></div>

                                            <div class="clearfix">
                                                <label class="inline">
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl"> 记住密码</span>
                                                </label>

                                                <button id="login" type="button" class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">登录</span>
                                                </button>
                                            </div>

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </form>

                                    <div class="space-6"></div>

                                </div><!-- /.widget-main -->

                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->
                    </div><!-- /.position-relative -->

                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.main-content -->
</div><!-- /.main-container -->

<script type="text/javascript">
    $('body').attr('class', 'login-layout blur-login');
    $('#id-text2').attr('class', 'white');
    $('#id-company-text').attr('class', 'light-blue');
    $("body").keydown(function() {
        if (event.keyCode == "13") {
            $("#login").click();
        }
    });
    $("#login").click(function(){
        var url = "${pageContext.request.contextPath}/admin/iden";
        var username = $("#username").val().trim();
        var password = $("#password").val().trim();
        var args = {"username":username,"password":password};
        $.post(url,args,function(data){
            if(data="success"){
                window.location.href="${pageContext.request.contextPath}/admin/home";
            }
            if(data=="error"){
                alert("用户名或者密码错误！");
            }
        });
    });
</script>
</body>
</html>
