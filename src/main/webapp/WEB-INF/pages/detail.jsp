<%--
  Created by IntelliJ IDEA.
  User: Lingling
  Date: 2016/11/6
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />

    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- start plugins -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/detail.css">

    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); }
    </script>

    <title>我的笔记</title>
</head>
<body>
    <!--header-->
    <jsp:include page="head.jsp"></jsp:include>
    <div class="detail">
        <div class="leftsidebar_box" id="menus">
            <div style="height: 8px;"></div>
        </div>
        <div clss ="right_content" class="right_content">
            <!--标题-->
            <div style="margin-left: 20px;">
                <h3 id="a_title"></h3> <span id="a_time"class="a-time" ></span>
            </div>
            <!--内容-->
            <div id="a_content" class="a-content">
            </div>
        </div>
    </div>
    <!--  foot -->
    <jsp:include page="foot.jsp"></jsp:include>
    <script type="text/javascript">
        $(function(){
            var url = location.href;
            var index = url .lastIndexOf("\/");
            url  = url .substring(index + 1, url.length);
            var reg = new RegExp("^[0-9]*$");
            if(reg.test(url)){
                getDetail(url);
            }else{
                getNewArticle();
            }
        });
        window.onload = function () {
            //加载菜单导航栏
            var url = "${pageContext.request.contextPath}/allMenus";
            $.post(url,function(data){
                for(var i=0;i<data.length;i++){
                    createMenus(data[i]);
                }
                initEvent();
            });

        }
        //目录
        function  createMenus(data){
            var html = '<dl>'+
                '<dt>'+data.m_name+'('+data.m_num+')'+'<img src="${pageContext.request.contextPath}/resources/images/left/select_xl01.png"></dt>';
            if(data.list_article!=null){
                html +=createTitle(data.list_article);
            }
            html+='</dl>';
            $(html).appendTo('#menus');
        }
        //目录
        function  createTitle(list){
            var html="";
            for(var i=0;i<list.length;i++){
                html += '<dd ><a href="#"onclick="getDetail('+list[i].d_id+')" title="'+list[i].d_title+'">'+list[i].d_title+'</a></dd>';
            }
            return html;
        }
        //获取最新的一条数据
        function getNewArticle(){
            var h2_title = document.getElementById("a_title");
            var sp_time = document.getElementById("a_time");
            var div_content = document.getElementById("a_content");
            var url = "${pageContext.request.contextPath}/newOrder";
            $.post(url,function(data){
                h2_title.innerHTML = data.d_title;
                sp_time.innerHTML = timeStamp2String(data.create_time);
                div_content.innerHTML=data.d_content;
            });
        }
        //获取具体的数据并显示的页面上
        function getDetail(id){
            var h2_title = document.getElementById("a_title");
            var sp_time = document.getElementById("a_time");
            var div_content = document.getElementById("a_content");
            var url = "${pageContext.request.contextPath}/order/"+id;
            $.post(url,function(data){
                h2_title.innerHTML = data.d_title;
                sp_time.innerHTML = timeStamp2String(data.create_time);
                div_content.innerHTML=data.d_content;
            });
        }

    </script>
    <script>
        function initEvent(){
            $(".leftsidebar_box dd").hide();
            $(".leftsidebar_box dt img").attr("src","${pageContext.request.contextPath}/resources/images/left/select_xl01.png");
            $(function(){
                $(".leftsidebar_box dd").hide();
                $(".leftsidebar_box dt").click(function(){
                    $(this).parent().find('dd').removeClass("menu_chioce");
                    $(".leftsidebar_box dt img").attr("src","${pageContext.request.contextPath}/resources/images/left/select_xl01.png");
                    $(this).parent().find('img').attr("src","${pageContext.request.contextPath}/resources/images/left/select_xl.png");
                    $(".menu_chioce").slideUp();
                    $(this).parent().find('dd').slideToggle();
                    $(this).parent().find('dd').addClass("menu_chioce");
                });
            });
        }
    </script>
</body>
</html>
