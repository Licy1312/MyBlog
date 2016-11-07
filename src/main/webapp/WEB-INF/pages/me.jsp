<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/5/1 0001
  Time: 下午 1:33
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/music/css/lanrenzhijia.css" type="text/css" />
    <!-- start plugins -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/css/font-awesome.min.css">

    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); }
    </script>

    <title>关于我</title>
</head>
<body>
    <!--  header -->
    <jsp:include page="head.jsp"></jsp:include>
    <!--contain-->
    <div class="about-me">
        <div class="main">
            <div class="account">
                <div class="account-info">
                    <div class="account-top">
                        <div class="account-top-left">
                            <img src="${pageContext.request.contextPath}/resources/images/me2.jpg" alt="">
                        </div>
                        <div class="account-top-right">
                            <h2>李昌亚</h2>
                            <p>求职意向：软件开发工程师</p>
                        </div>
                        <div class="clear"> </div>
                    </div>
                    <div class="account-bottom">
                        <div class="tabs">
                            <nav>
                                <a><span> </span>基本信息 </a>
                                <a><span class="icon1"></span>专业技能 </a>
                                <a><span class="icon2"></span>项目经验</a>
                                <a><span class="icon3"></span>实习经历</a>
                                <a><span class="icon4"></span>个人评价</a>
                                <a><span class="icon5"></span>荣誉奖励</a>
                            </nav>
                            <div class="content">
                                <div class="text" style=" height: 40%;">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right info-me1" style=" height: 99%;">

                                        <p id ="year">2017届应届毕业生<br/>
                                           上海大学 计算机工程与科学学院 软件工程 </p>
                                    </div>
                                </div>
                                <div class="text" style=" height: 60%;">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right info-me2" >
                                        <table >
                                            <tbody>
                                               <tr>
                                                   <td style="color: #428bca;">性别:</td><td>男</td><td></td><td  style="color: #428bca;">籍贯:</td><td>河南信阳</td>
                                               </tr>
                                               <tr>
                                                   <td  style="color: #428bca;">出生年月:</td><td>1991.11</td><td></td><td  style="color: #428bca;">学历:</td><td>硕士研究生</td>
                                               </tr>
                                               <tr>
                                                   <td  style="color: #428bca;">电话:</td><td>15201895065</td><td></td><td  style="color: #428bca;">邮箱:</td><td>licy1312@163.com</td>
                                               </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>

                            </div>
                            <div class="content">
                                <div class="text" style=" height: 60%;">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right skilled" style=" height: 99%;">

                                        <pre>熟练掌握JavaSE，熟练面向对象设计思想
                                        熟练javaEE开发过程、熟悉TCP/UDP网络协议、java多线程编程
                                        熟练对tomcat、maven、git、github、sourceTree等工具的使用
                                        熟悉jsp、javascript、jquery、xml等技术
                                        熟悉hibernate、spring、springmvc、Lucene、cxf等开源框架
                                        熟悉MySQL、Mongodb的使用，以及MySQL的性能优化环节
                                        熟悉Linux系统常用命令及shell简单编程
                                        </pre>

                                    </div>
                                </div>
                                <div class="text" style=" height: 40%;">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right" >

                                    </div>

                                </div>

                            </div>

                            <div class="content">
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">My First Name</a></h4><label>2:30 PM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Malorum Borney</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text ">
                                    <div class="text-left">
                                        <span class="star"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Flux Capacitor!</a></h4><label>2:30 PM </label>
                                        <p>It requires 2 gigaWatts of electricity... </p>
                                        <p class="from">From</p>
                                        <h6>Dr. Emmett Brown</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Dolorem ipsum </a></h4><label>2:30 PM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Ricky Anthony</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Sweet last name!</a></h4><label>2:00 PM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Patrick Star</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Dolorem ipsum</a></h4><label>1:15 PM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Patrick Star</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                            </div>
                            <div class="content">
                                <div class="text ">
                                    <div class="text-left">
                                        <span class="star"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">My First Name</a></h4> <label>11:50 AM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Malorum Borney</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Hi Friend...  </a></h4><label>10:05 AM </label>
                                        <p>It requires 2 gigaWatts of electricity... </p>
                                        <p class="from">From</p>
                                        <h6>Dr. Emmett Brown</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Flux Capacitor!</a></h4><label>9:30 AM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Ricky Anthony</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">My First Name </a></h4><label>8:45 PM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Patrick Star</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Sweet last name!</a></h4><label>11:50 PM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Patrick Star</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                            </div>
                            <div class="content">
                                <div class="text ">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Sweet last name!</a></h4><label>11:50 PM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Malorum Borney</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">My First Name</a></h4><label>10:55 PM </label>
                                        <p>It requires 2 gigaWatts of electricity... </p>
                                        <p class="from">From</p>
                                        <h6>Dr. Emmett Brown</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text ">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Flux Capacitor!</a></h4><label>10:15 PM </label>
                                        <p>Lorem Ipsum is dummy text Of industry. </p>
                                        <p class="from">From</p>
                                        <h6> Ricky Anthony</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right">
                                        <h4><a href="#">Hi Friend... </a></h4><label>9:23 PM </label>
                                        <p>It requires 2 gigaWatts of electricity... </p>
                                        <p class="from">From</p>
                                        <h6>Dr. Emmett Brown</h6>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <select tabindex="4" class="dropdown">
                                <option value="" class="label" >中文</option>
                                <option value="1">English</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  foot -->
    <jsp:include page="foot.jsp"></jsp:include>
    <script>
        $(function() {
            $('.tabs nav a').on('click', function() {
                show_content($(this).index());
            });
            show_content(0);
            function show_content(index) {
                // Make the content visible
                $('.tabs .content.visible').removeClass('visible');
                $('.tabs .content:nth-of-type(' + (index + 1) + ')').addClass('visible');
                // Set the tab to selected
                $('.tabs nav a.selected').removeClass('selected');
                $('.tabs nav a:nth-of-type(' + (index + 1) + ')').addClass('selected');
            }
        });
    </script>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-36251023-1']);
        _gaq.push(['_setDomainName', 'jqueryscript.net']);
        _gaq.push(['_trackPageview']);
//        (function() {
//            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
//            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
//            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
//        })();
    </script>
</body>
</html>
