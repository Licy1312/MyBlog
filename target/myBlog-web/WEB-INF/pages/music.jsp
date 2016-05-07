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
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <script language="Javascript" type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script language="Javascript" type="text/javascript" src="http://api.easyjquery.com/easyjquery.js"></script>
  <script language=javascript>
    GetIP();
    function my_callback2(json) {
      alert(json.IP);
    }
    function GetIP(){
      EasyjQuery_Get_IP("my_callback2","full"); // full version
    }
  </script>


</head>
<body>
<div id="elInfo" >
</div>
</body>
</html>


