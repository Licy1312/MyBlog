<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header_bg" id="home">
  <div class="container">
    <div class="row header text-center specials">
      <%--<div class="h_logo">--%>
        <%--<a href="index.html" title="首页"><img src="${pageContext.request.contextPath}/resources/images/logo.png"  class="responsive"/></a>--%>
      <%--</div>--%>
      <nav class="top-nav">
        <ul class="top-nav nav_list">
          <li><a href="${pageContext.request.contextPath}/detail">笔记本</a></li>
          <li class="page-scroll"><a href="${pageContext.request.contextPath}/#music">音乐盒</a></li>
          <li class="logo page-scroll"><a  href="${pageContext.request.contextPath}/" title="首页"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="" class="responsive"/></a></li>
          <li class="page-scroll"><a href="#contact">留言板</a></li>
          <li class="page-scroll"><a href="${pageContext.request.contextPath}/me">关于我</a></li>
        </ul>
        <a href="#" id="pull"><img src="${pageContext.request.contextPath}/resources/images/nav-icon.png" title="menu" /></a>
      </nav>
      <div class="clearfix"></div>
    </div>
  </div>
</div>