<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/5/5 0005
  Time: 下午 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试提交数据</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript">
        $(function(){
          $("#button").click(function(){
              var url = "${pageContext.request.contextPath}/saveMessage";
              var args = {"title":"lichangya","content":"shanghaidaxue"};
              $.post(url,args,function(){
                alert("留言成功！")
              });
          });
        })
    </script>
</head>
<body>
  访问成功！
<button id="button">点击测试</button>
</body>
</html>
