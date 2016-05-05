<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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

  <title>Home</title>
</head>
<body>

<!--  header -->
<jsp:include page="head.jsp"></jsp:include>

<div class="slider_bg"><!-- start slider -->
  <div class="container">
    <div class="row slider">
      <div class="wmuSlider example1"><!-- start wmuSlider example1 -->

        <div class="wmuSliderWrapper">

          <article style="position: absolute; width: 100%; opacity: 0;">
            <div class="slider_img text-center">
              <ul class="list-unstyled list_imgs">
                <li><a title="Go to Essays" href="#"><img src="${pageContext.request.contextPath}/resources/images/chun.jpg" alt="" class="responsive"/></a></li>
              </ul>
            </div>
          </article>

          <article style="position: relative; width: 100%; opacity: 1;">
            <div class="slider_img text-center">
              <ul class="list-unstyled list_imgs">
                <li><a title="Go to Music" href="#"><img src="${pageContext.request.contextPath}/resources/images/xia.jpg" alt="" class="responsive"/></a></li>
              </ul>
            </div>
          </article>
          <article style="position: relative; width: 100%; opacity: 2;">
            <div class="slider_img text-center">
              <ul class="list-unstyled list_imgs">
                <li><a title="Go to Picture" href="#"><img src="${pageContext.request.contextPath}/resources/images/qiu.jpg" alt="" class="responsive"/></a></li>
              </ul>
            </div>
          </article>
          <article style="position: relative; width: 100%; opacity: 3;">
            <div class="slider_img text-center">
              <ul class="list-unstyled list_imgs">
                <li><a title="Go to GuestBook" href="#contact"><img src="${pageContext.request.contextPath}/resources/images/dong.jpg" alt="" class="responsive"/></a></li>
              </ul>
            </div>
          </article>


        </div>

        <ul class="wmuSliderPagination">
          <li><a href="#" class="">0</a></li>
          <li><a href="#" class="">1</a></li>
          <li><a href="#" class="">2</a></li>
          <li><a href="#" class="">3</a></li>
        </ul>

        <script src="${pageContext.request.contextPath}/resources/js/jquery.wmuSlider.js"></script>
        <script>
          $('.example1').wmuSlider();
        </script>

      </div><!-- end wmuSlider example1 -->

      <div class="clearfix"></div>
    </div>
  </div>
</div>
<!--  foot -->
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
