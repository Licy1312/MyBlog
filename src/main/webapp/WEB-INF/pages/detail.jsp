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

    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <title>我的笔记</title>
    <style type="text/css">
        .detail img{border:none;}
        *{font-family:'微软雅黑';font-size:12px;color:#626262;}
        dl,dt,dd{display:block;margin:0;}
        .detail a{text-decoration:none;    display: block;
            overflow: hidden;
            word-break: keep-all;
            white-space: nowrap;
            text-overflow: ellipsis;}

        #bg{background-image:url(${pageContext.request.contextPath}/resources/images/content/dotted.png);}
        .detail{width:76%;height:100%;margin:40px auto 30px auto;-moz-border-radius: 15px;
            -webkit-border-radius: 15px;
            border-radius: 15px;}

        /*left*/

        .leftsidebar_box{width:20%;overflow-x:auto;float: left;
            overflow-y:auto;  min-height: 300px;max-height: 100%;
            border: 1px solid #968f8f;
            -moz-border-radius: 15px;
            -webkit-border-radius: 15px;
            border-radius: 15px;
            background: rgb(76, 76, 76);}
        .leftsidebar_box dt{padding-left:30px;padding-right:10px;background-repeat:no-repeat;background-position:10px center;color:#42a3f7;font-size:12px;position:relative;line-height:48px;cursor:pointer;}
        .leftsidebar_box dd{padding-left:45px;}
        .leftsidebar_box dd a{color:#42a3f7;line-height:20px;}
        .leftsidebar_box dt img{position:absolute;right:10px;top:20px;}
        .leftsidebar_box dl dd:last-child{padding-bottom:10px;}
        ::-webkit-scrollbar {
            width: 1em;
            height: 1em;
        }
    </style>
</head>
<body>
    <!--header-->
    <jsp:include page="head.jsp"></jsp:include>
    <div class="detail">

        <div class="leftsidebar_box" id="menus">



            <div style="height: 8px;"></div>
            <%--<dl>--%>
                <%--<dt>系统记录<img src="${pageContext.request.contextPath}/resources/images/left/select_xl01.png"></dt>--%>
                <%--<dd><a href="#">充值记录</a></dd>--%>
                <%--<dd><a href="#">短信充值记录</a></dd>--%>
                <%--<dd><a href="#">消费记录</a></dd>--%>
                <%--<dd><a href="#">操作记录</a></dd>--%>
            <%--</dl>--%>

            <%--<dl >--%>
                <%--<dt >客户管理<img src="${pageContext.request.contextPath}/resources/images/left/select_xl01.png"></dt>--%>
                <%--<dd ><a href="#">客户管理</a></dd>--%>
                <%--<dd><a href="#">试用/成交客户管理</a></dd>--%>
                <%--<dd><a href="#">未成交客户管理</a></dd>--%>
                <%--<dd><a href="#">即将到期客户管理</a></dd>--%>
            <%--</dl>--%>

            <%--<dl >--%>
                <%--<dt>渠道管理<img src="${pageContext.request.contextPath}/resources/images/left/select_xl01.png"></dt>--%>
                <%--<dd><a href="#">渠道标准管理</a></dd>--%>
                <%--<dd><a href="#">系统通知</a></dd>--%>
                <%--<dd><a href="#">渠道商管理</a></dd>--%>
                <%--<dd><a href="#">渠道商链接</a></dd>--%>

            <%--</dl>--%>





        </div>
        <div clss ="right_content" style="width: 79%; height: 100%;float: right;background-color: antiquewhite;min-height: 300px;max-height: 100%; -moz-border-radius: 15px;
            -webkit-border-radius: 15px;
            border-radius: 15px;
            background: rgb(76, 76, 76);">
            <!--标题-->
            <div>

            </div>
            <!--内容-->
            <div>

            </div>
        </div>
    </div>
    <!--foot-->
    <div class="footer1_bg">
        <div class="container">
            <div class="row  footer">
                <div class="copy text-center">
                    <p class="link"><span>Copyright &copy; 2016. This's my world. Welcome to you.</span></p>
                    <a href="#home" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"> </span></a>
                </div>
            </div>
            <script type="text/javascript">
                $(function() {
                    $('a[href*=#]:not([href=#])').click(function() {
                        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

                            var target = $(this.hash);
                            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                            if (target.length) {
                                $('html,body').animate({
                                    scrollTop: target.offset().top
                                }, 1000);
                                return false;
                            }
                        }
                    });
                });
            </script>
            <!---- start-smoth-scrolling---->
        </div>
    </div>
    <script type="text/javascript">
        window.onload = function () {
            //最近发布的5条数据
            var url = "${pageContext.request.contextPath}/allMenus";
            $.post(url,function(data){
                for(var i=0;i<data.length;i++){
                    createMenus(data[i]);
                }
            });
        }
        //目录
        function  createMenus(data){
            var html = '<dl>'+
                '<dt>'+data.m_name+'('+data.m_num+')'+'<img src="${pageContext.request.contextPath}/resources/images/left/select_xl01.png"></dt>'+
            '</dl>';
            $(html).appendTo('#menus');
        }
        //目录
        function  createTitle(list){
            var html;
            if(list!=null){
                for(var i=0;i<list.length;i++){
                    html += ' <dd ><a href="#">'+list[i].d_title+'</a></dd>';
                }
            }else{
                html='';
            }
            return html;
        }
    </script>
    <script type="text/javascript">
        $(".leftsidebar_box dt").css({});
        $(".leftsidebar_box dt img").attr("src","${pageContext.request.contextPath}/resources/images/left/select_xl01.png");
        $(function(){
            $(".leftsidebar_box dd").hide();
            $(".leftsidebar_box dt").click(function(){
                $(".leftsidebar_box dt").css({})
                $(this).css({});
                $(this).parent().find('dd').removeClass("menu_chioce");
                $(".leftsidebar_box dt img").attr("src","${pageContext.request.contextPath}/resources/images/left/select_xl01.png");
                $(this).parent().find('img').attr("src","${pageContext.request.contextPath}/resources/images/left/select_xl.png");
                $(".menu_chioce").slideUp();
                $(this).parent().find('dd').slideToggle();
                $(this).parent().find('dd').addClass("menu_chioce");
            });
        })
    </script>
</body>
</html>
