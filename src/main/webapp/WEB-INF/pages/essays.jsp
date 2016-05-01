<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Essays</title>
  <!-- Bootstrap -->
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="application/x-javascript">
    addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); }
  </script>
  <!--[if lt IE 9]>
  <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/respond.min.js"></script>
  <![endif]-->

  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
  <!-- start plugins -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
  <!----font-Awesome----->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/css/font-awesome.min.css">
  <!----font-Awesome----->
  <!-- start light_box -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.css" media="screen" />
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.fancybox-1.2.1.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $("div.fancyDemo a").fancybox();
    });
  </script>

</head>
<body>
<!--  header -->
<jsp:include page="head.jsp"></jsp:include>
<div class="container"><!-- start main -->
  <div class="main row">
    <h2 class="style">list of projects</h2>
    <div class="grids_of_4 row">
      <div class="col-md-3 images_1_of_4">
        <div class="fancyDemo">
          <a rel="group" title="" href="${pageContext.request.contextPath}/resources/images/essays1.jpg"><img src="${pageContext.request.contextPath}/resources/images/essays1.jpg" alt=""class="img-responsive"/></a>
        </div>
        <h3><a href="single-page.html">人活着，别省 别等 别放 别忍 别恨</a></h3>
        <p class="para">有钱别省：生不带来，死不带去。健康高于财富，有了健康，才拥有一切。民间顺口溜说得好：不怕赚得少，只怕死得早;留得健康在，何怕赚不来。为了健康，该出手时就出手”，有钱别省。</p>
      </div>
      <div class="col-md-3 images_1_of_4">
        <div class="fancyDemo">
          <a rel="group" title="" href="${pageContext.request.contextPath}/resources/images/pic2.jpg"><img src="${pageContext.request.contextPath}/resources/images/pic2.jpg" alt=""class="img-responsive"/></a>
        </div>
        <h3><a href="single-page.html">long established fact</a></h3>
        <p class="para">Our website design and development provides quality web solutions,</p>

      </div>
      <div class="col-md-3 images_1_of_4">
        <div class="fancyDemo">
          <a rel="group" title="" href="${pageContext.request.contextPath}/resources/images/pic3.jpg"><img src="${pageContext.request.contextPath}/resources/images/pic3.jpg" alt=""class="img-responsive"/></a>
        </div>
        <h3><a href="single-page.html">Contrary to popular</a></h3>
        <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do EIUSMOD tempor,</p>

      </div>
      <div class="col-md-3 images_1_of_4">
        <div class="fancyDemo">
          <a rel="group" title="" href="${pageContext.request.contextPath}/resources/images/pic4.jpg"><img src="${pageContext.request.contextPath}/resources/images/pic4.jpg" alt=""class="img-responsive"/></a>
        </div>
        <h3><a href="single-page.html">Lorem Ipsum available</a></h3>
        <p class="para">There are many variations of passages of Lorem Ipsum available,</p>

      </div>
      <div class="clear"></div>
    </div>
    <div class="grids_of_4 row">
      <div class="col-md-3 images_1_of_4">
        <div class="fancyDemo">
          <a rel="group" title="" href="${pageContext.request.contextPath}/resources/images/pic5.jpg"><img src="${pageContext.request.contextPath}/resources/images/pic5.jpg" alt=""class="img-responsive"/></a>
        </div>
        <h3><a href="single-page.html">long established fact</a></h3>
        <p class="para">There are many variations of passages of Lorem Ipsum available,</p>

      </div>
      <div class="col-md-3 images_1_of_4">
        <div class="fancyDemo">
          <a rel="group" title="" href="${pageContext.request.contextPath}/resources/images/pic6.jpg"><img src="${pageContext.request.contextPath}/resources/images/pic6.jpg" alt=""class="img-responsive"/></a>
        </div>
        <h3><a href="single-page.html">Lorem Ipsum is simply</a></h3>
        <p class="para">Our website design and development provides quality web solutions,</p>

      </div>
      <div class="col-md-3 images_1_of_4">
        <div class="fancyDemo">
          <a rel="group" title="" href="${pageContext.request.contextPath}/resources/images/pic7.jpg"><img src="${pageContext.request.contextPath}/resources/images/pic7.jpg" alt=""class="img-responsive"/></a>
        </div>
        <h3><a href="single-page.html">Lorem Ipsum available</a></h3>
        <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do EIUSMOD tempor,</p>

      </div>
      <div class="col-md-3 images_1_of_4">
        <div class="fancyDemo">
          <a rel="group" title="" href="${pageContext.request.contextPath}/resources/images/pic8.jpg"><img src="${pageContext.request.contextPath}/resources/images/pic8.jpg" alt=""class="img-responsive"/></a>
        </div>
        <h3><a href="single-page.html">Contrary to popular</a></h3>
        <p class="para">There are many variations of passages of Lorem Ipsum available,</p>
       >
      </div>
      <div class="clear"></div>
    </div>
  </div>
</div><!-- end main -->
<!--  foot -->
<jsp:include page="foot.jsp"></jsp:include>

</body>
</html>
