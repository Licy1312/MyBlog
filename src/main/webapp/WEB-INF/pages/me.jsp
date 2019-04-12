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
    <div class="about-me" >
        <div class="main">
            <div class="account">
                <div class="account-info">
                    <div class="account-top">
                        <div class="account-top-left">
                            <img src="${pageContext.request.contextPath}/resources/images/author.jpg" alt="">
                        </div>
                        <div class="account-top-right">
                            <h2>姓名</h2>
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
                            <!--基本信息-->
                            <div class="content">
                                <div class="text" style=" height: 40%;">
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                    </div>
                                    <div class="text-right info-me1" style=" height: 99%;">

                                        <p id ="year">2017届应届硕士毕业生<br/>
                                           XXX学校 XXXX学院 XXXX专业 </p>
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
                                                   <td style="color: #428bca;">性别:</td><td>男</td><td></td><td  style="color: #428bca;">籍贯:</td><td>XXXXX</td>
                                               </tr>
                                               <tr>
                                                   <td  style="color: #428bca;">出生年月:</td><td>1991.11</td><td></td><td  style="color: #428bca;">学历:</td><td>XXXXX</td>
                                               </tr>
                                               <tr>
                                                   <td  style="color: #428bca;">电话:</td><td>XXXXXXXXX</td><td></td><td  style="color: #428bca;">邮箱:</td><td>XXXXXXXXX@163.com</td>
                                               </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>

                            </div>
                            <!--专业技能-->
                            <div class="content">
                                <div class="text skilled1" >
                                    <div class="text-left">
                                        <span class="star active"> </span>
                                        <p>个人专业技能：</p>
                                    </div>
                                    <div class="text-right skilled skilled2">

                                        <p>
                                        熟练掌握JavaSE，熟练面向对象设计思想<br/>
                                        熟练javaEE开发过程、熟悉TCP/UDP网络协议、java多线程编程<br/>
                                        熟练对tomcat、maven、git、github、sourceTree等工具的使用<br/>
                                        熟悉jsp、javascript、jquery、xml等技术<br/>
                                        熟悉hibernate、spring、springmvc、Lucene、cxf等开源框架<br/>
                                        熟悉MySQL、Mongodb的使用，以及MySQL的性能优化环节<br/>
                                        熟悉Linux系统常用命令及shell简单编程<br/>
                                        </p>
                                    </div>
                                </div>
                                <div class="text skilled1" style=" height: 40%;">
                                    <div class="text-left">
                                        <span class="star active"></span>
                                        <p>根据英文文档学习的相关编程技能：</p>
                                    </div>

                                    <div class="text-right skilled skilled2" >
                                        <p>
                                        了解PHP的Laravel框架项目的开发<br/>
                                        了解meteor全栈开发的流程<br/>
                                        了解Mongodb+Express+Angularjs+Node.js开发的过程<br/>
                                        </p>
                                    </div>

                                </div>

                            </div>
                            <!--项目经验-->
                            <div class="content">
                                <div class="text" style="height: 18%">
                                    <div class="text-left project-title">
                                        <span class="star active" > </span>
                                        <p>XXXXXXXXX项目</p>
                                    </div>
                                    <div class="text-right project">

                                            <p><pj class="pj">项目描述：</pj>XXXXXXXXXX</p>
                                            <p>课程在线教学平台。<a href="">www.baidu.com</a></p>
                                            <p><pj class="pj">软件环境：</pj>XXXXXXXXXX</p>
                                            <p><pj class="pj">负责部分：</pj>XXXXXXXXXX</p>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text" style="height: 18%">
                                    <div class="text-left project-title">
                                        <span class="star active" > </span>
                                        <p>XXXXXXXXX项目</p>
                                    </div>
                                    <div class="text-right project">

                                            <p><pj class="pj">项目描述：</pj>XXXXXXXXXX</p>
                                            <p>课程在线教学平台。<a href="">www.baidu.com</a></p>
                                            <p><pj class="pj">软件环境：</pj>XXXXXXXXXX</p>
                                            <p><pj class="pj">负责部分：</pj>XXXXXXXXXX</p>
                                    </div>
                                    <div class="clear"> </div>
                                </div>

                                <div class="text" style="height: 30%">
                                    <div class="text-left project-title">
                                        <span class="star active" > </span>
                                        <p>XXXXXXXXX项目</p>
                                    </div>
                                    <div class="text-right project">

                                            <p><pj class="pj">项目描述：</pj>XXXXXXXXXX</p>
                                            <p>课程在线教学平台。<a href="">www.baidu.com</a></p>
                                            <p><pj class="pj">软件环境：</pj>XXXXXXXXXX</p>
                                            <p><pj class="pj">负责部分：</pj>XXXXXXXXXX</p>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text" style="height: 34%">
                                    <div class="text-left project-title">
                                        <span class="star active" > </span>
                                        <p>XXXXXXXXX项目</p>
                                    </div>
                                    <div class="text-right project">

                                            <p><pj class="pj">项目描述：</pj>XXXXXXXXXX</p>
                                            <p>课程在线教学平台。<a href="">www.baidu.com</a></p>
                                            <p><pj class="pj">软件环境：</pj>XXXXXXXXXX</p>
                                            <p><pj class="pj">负责部分：</pj>XXXXXXXXXX</p>
                                    </div>
                                    <div class="clear"> </div>
                                </div>
                            </div>
                            <!--实习经验-->
                            <div class="content">
                                <div class="text " style="height: 20%"></div>
                                <div class="text" style="height: 60%">
                                    <div class="text-left">
                                        <span class="star active" > </span>

                                    </div>
                                    <div class="text-right project">
                                        <p class="experience">2015.04-2015.07  &nbsp;&nbsp;上海XXXXXX系统有限公司    &nbsp;&nbsp;       java开发工程师</p>
                                        <p><pj class="pj">工作内容描述：</pj>1. XXXXXXXXXX</p>
                                        <p style="margin-left: 94px;">2. XXXXXXXXXX</p>
                                        <p style="margin-left: 94px;">3. XXXXXXXXXX</p>

                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text" style="height: 20%"></div>
                            </div>
                            <!--个人评价-->
                            <div class="content">
                                <div class="text " style="height: 20%"></div>
                                <div class="text" style="height: 60%">
                                    <div class="text-left">
                                        <span class="star active" > </span>

                                    </div>
                                    <div class="text-right skilled">
                                        <p>
                                            本人本科和硕士阶段读的都是计算机专业，具有扎实的专业基础。<br/>
                                            性格比较开朗，喜欢交流，喜欢和同伴一起讨论问题。<br/>
                                            具有团队合作精神，对待学习和工作态度认真。<br/>
                                            善于学习新的技术和事务，空闲时间喜欢浏览一些IT科技方面的新闻，和技术博客。<br/>
                                            有良好的自学能力和独立解决问题的能力。<br/>

                                        </p>

                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text" style="height: 20%"></div>
                            </div>
                            <!--荣誉奖励-->
                            <div class="content">
                                <div class="text " style="height: 20%"></div>
                                <div class="text" style="height: 60%">
                                    <div class="text-left">
                                        <span class="star active" > </span>
                                    </div>
                                    <div class="text-right skilled">

                                   


                                        <p>
                                            各种奖励

                                        </p>

                                    </div>
                                    <div class="clear"> </div>
                                </div>
                                <div class="text" style="height: 20%"></div>
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
</body>
</html>
