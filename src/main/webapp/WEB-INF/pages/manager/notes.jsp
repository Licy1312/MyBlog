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
                    <li class="active">笔记本</li>
                    </ul>
            </div>
        </div>
        <div style="float: left;">
            <c:if test="${empty tempNotes}">
                <p>你好，该笔记本中还没有笔记！</p>
            </c:if>
            <div style="float: left;">
                <c:if test="${not empty tempNotes}">
                    <c:forEach items="${tempNotes}" var="tempNote" varStatus="vs">
                        ${tempNote.d_title}
                    </c:forEach>
                    kafkgjkrgkjrjk
                </c:if>

            </div>
        </div>
    </div>
    <!--底部的页面版权说明-->
    <jsp:include page="foot.jsp"></jsp:include>
</div>
</body>
</html>
