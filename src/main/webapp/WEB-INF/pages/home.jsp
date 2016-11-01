<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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

  <title>Home</title>
</head>
<body>

<!--  header -->
<jsp:include page="head.jsp"></jsp:include>

<div class="slider_bg"><!-- start slider -->
  <div class="container">
      <div class="info" >
        <figure > <img src="${pageContext.request.contextPath}/resources/images/art.jpg"  alt="Panama Hat">
          <figcaption><strong>渡人如渡己，渡已，亦是渡</strong> 当我们被误解时，会花很多时间去辩白。 但没有用，没人愿意听，大家习惯按自己的所闻、理解做出判别，每个人其实都很固执。与其努力且痛苦的试图扭转别人的评判，不如默默承受，给大家多一点时间和空间去了解。而我们省下辩解的功夫，去实现自身更久远的人生价值。其实，渡人如渡己，渡已，亦是渡人。</figcaption>
        </figure>
        <div class="card">
          <h1>我的名片</h1>
          <p>姓名：李昌亚 </p>
          <p>职业：在校学生（目前）</p>
          <p>电话：15201895065</p>
          <p>Email：licy1312@163.com</p>
          <ul class="intro">
            <li><a href="#contact" class="talk" title="给我留言"></a></li>
            <li><a href="/" class="addresses" title="联系地址"></a></li>
            <li><a href="/" class="email" title="留言板"></a></li>
            <li><a href="/" class="heart" title="关注我"></a></li>
          </ul>
        </div>
      </div>
      <div class="blank"></div>
      <div class="blogs">
        <ul class="bloglist">
          <li>
            <div class="arrow_box">
              <div class="ti"></div>
              <!--三角形-->
              <div class="ci"></div>
              <!--圆形-->
              <h2 class="title"><a href="/" target="_blank">我希望我的爱情是这样的</a></h2>
              <ul class="textinfo">
                <a href="/"><img src="${pageContext.request.contextPath}/resources/images/s1.jpg"></a>
                <p> 我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。</p>
              </ul>
              <ul class="details">
                <li class="likes"><a href="#">10</a></li>
                <li class="comments"><a href="#">34</a></li>
                <li class="icon-time"><a href="#">2013-8-7</a></li>
              </ul>
            </div>
            <!--arrow_box end-->
          </li>
          <li>
            <div class="arrow_box">
              <div class="ti"></div>
              <!--三角形-->
              <div class="ci"></div>
              <!--圆形-->
              <h2 class="title"><a href="/" target="_blank">谁更心软，谁就先长大</a></h2>
              <ul class="textinfo">
                <a href="/"><img src="${pageContext.request.contextPath}/resources/images/s2.jpg"></a>
                <p> 男人都是孩子，需要用一生时间来长大。女人都想当孩子，却最擅长的角色是妈妈。恋爱一开始，是两个孩子之间的游戏，到后来，成了大人和孩子之间的游戏。恋爱这回事，总要有一个人先长大，对另一半多些包容和宠溺。而通常来看：谁更心软，谁就先长大...</p>
              </ul>
              <ul class="details">
                <li class="likes"><a href="#">102</a></li>
                <li class="comments"><a href="#">58</a></li>
                <li class="icon-time"><a href="#">2013-8-7</a></li>
              </ul>
            </div>
            <!--arrow_box end-->
          </li>
          <li>
            <div class="arrow_box">
              <div class="ti"></div>
              <!--三角形-->
              <div class="ci"></div>
              <!--圆形-->
              <h2 class="title"><a href="/" target="_blank">Nothing is as sweet as you</a></h2>
              <ul class="textinfo">
                <a href="/"><img src="${pageContext.request.contextPath}/resources/images/s3.jpg"></a>
                <p> 有时候不是我不理你，其实我也想你了，只是我不知道该对你说什么。不管过去如何，过去的已经过去，最好的总在未来等着你。当我们懂得珍惜平凡的幸福的时候，就已经成了人生的赢家。Nothing is as sweet as you再没什么，能甜蜜如你。我以为只要很认真的喜欢就能打动一个人...</p>
              </ul>
              <ul class="details">
                <li class="likes"><a href="#">15</a></li>
                <li class="comments"><a href="#">2</a></li>
                <li class="icon-time"><a href="#">2013-8-7</a></li>
              </ul>
            </div>
            <!--arrow_box end-->
          </li>
          <li>
            <div class="arrow_box">
              <div class="ti"></div>
              <!--三角形-->
              <div class="ci"></div>
              <!--圆形-->
              <h2 class="title"><a href="/" target="_blank">谁更心软，谁就先长大</a></h2>
              <ul class="textinfo">
                <a href="/"><img src="${pageContext.request.contextPath}/resources/images/s4.jpg"></a>
                <p> 男人都是孩子，需要用一生时间来长大。女人都想当孩子，却最擅长的角色是妈妈。恋爱一开始，是两个孩子之间的游戏，到后来，成了大人和孩子之间的游戏。恋爱这回事，总要有一个人先长大，对另一半多些包容和宠溺。而通常来看：谁更心软，谁就先长大...</p>
              </ul>
              <ul class="details">
                <li class="likes"><a href="#">102</a></li>
                <li class="comments"><a href="#">58</a></li>
                <li class="icon-time"><a href="#">2013-8-7</a></li>
              </ul>
            </div>
            <!--arrow_box end-->
          </li>
          <li>
            <div class="arrow_box">
              <div class="ti"></div>
              <!--三角形-->
              <div class="ci"></div>
              <!--圆形-->
              <h2 class="title"><a href="/" target="_blank">趁我们都还年轻</a></h2>
              <ul class="textinfo">
                <a href="/"><img src="${pageContext.request.contextPath}/resources/images/s5.jpg"></a>
                <p> 趁我们都还年轻,多走几步路，多欣赏下沿途的风景，不要急于抵达目的地而错过了流年里温暖的人和物；趁我们都还年轻，多说些浪漫的话语，多做些幼稚的事情，不要嫌人笑话错过了生命中最美好的片段和场合；趁我们都还年轻，把距离缩短，把时间延长。趁我们都还年轻，多做些我们想要做的任何事...</p>
              </ul>
              <ul class="details">
                <li class="likes"><a href="#">15</a></li>
                <li class="comments"><a href="#">2</a></li>
                <li class="icon-time"><a href="#">2013-8-7</a></li>
              </ul>
            </div>
            <!--arrow_box end-->
          </li>
        </ul>
        <!--bloglist end-->
        <aside>
          <div class="search">
            <form class="searchform" method="get" action="#">
              <input type="text" name="s" value="Search" onfocus="this.value=''" onblur="this.value='Search'">
            </form>
          </div>
          <div class="tuijian">
            <h2>推荐文章</h2>
            <ol>
              <li><span><strong>1</strong></span><a href="/">有一种思念，是淡淡的幸福,一个心情一行文字</a></li>
              <li><span><strong>2</strong></span><a href="/">励志人生-要做一个潇洒的女人</a></li>
              <li><span><strong>3</strong></span><a href="/">女孩都有浪漫的小情怀——浪漫的求婚词</a></li>
              <li><span><strong>4</strong></span><a href="/">Green绿色小清新的夏天-个人博客模板</a></li>
              <li><span><strong>5</strong></span><a href="/">女生清新个人博客网站模板</a></li>
              <li><span><strong>6</strong></span><a href="/">Wedding-婚礼主题、情人节网站模板</a></li>
              <li><span><strong>7</strong></span><a href="/">Column 三栏布局 个人网站模板</a></li>
              <li><span><strong>8</strong></span><a href="/">时间煮雨-个人网站模板</a></li>
              <li><span><strong>9</strong></span><a href="/">花气袭人是酒香—个人网站模板</a></li>
            </ol>
          </div>
          <div class="toppic">
            <h2>图文并茂</h2>
            <ul>
              <li><a href="/"><img src="${pageContext.request.contextPath}/resources/images/k01.jpg">腐女不可怕，就怕腐女会画画！
                <p>伤不起</p>
              </a></li>
              <li><a href="/"><img src="${pageContext.request.contextPath}/resources/images/k02.jpg">问前任，你还爱我吗？无限戳中泪点~
                <p>感兴趣</p>
              </a></li>
              <li><a href="/"><img src="${pageContext.request.contextPath}/resources/images/k03.jpg">世上所谓幸福，就是一个笨蛋遇到一个傻瓜。
                <p>喜欢</p>
              </a></li>
            </ul>
          </div>
          <div class="clicks">
            <h2>热门点击</h2>
            <ol>
              <li><span><a href="/">慢生活</a></span><a href="/">有一种思念，是淡淡的幸福,一个心情一行文字</a></li>
              <li><span><a href="/">爱情美文</a></span><a href="/">励志人生-要做一个潇洒的女人</a></li>
              <li><span><a href="/">慢生活</a></span><a href="/">女孩都有浪漫的小情怀——浪漫的求婚词</a></li>
              <li><span><a href="/">博客模板</a></span><a href="/">Green绿色小清新的夏天-个人博客模板</a></li>
              <li><span><a href="/">女生个人博客</a></span><a href="/">女生清新个人博客网站模板</a></li>
              <li><span><a href="/">Wedding</a></span><a href="/">Wedding-婚礼主题、情人节网站模板</a></li>
              <li><span><a href="/">三栏布局</a></span><a href="/">Column 三栏布局 个人网站模板</a></li>
              <li><span><a href="/">个人网站模板</a></span><a href="/">时间煮雨-个人网站模板</a></li>
              <li><span><a href="/">古典风格</a></span><a href="/">花气袭人是酒香—个人网站模板</a></li>
            </ol>
          </div>
        </aside>
        <div class="music-player"  id="music" style="margin-right: 0px;margin-bottom: 0px;">
          <div class="info" style="margin-top: 0px;margin-bottom: 0px;">
            <div class="left"> <a href="javascript:;" class="icon-shuffle"></a> <a href="javascript:;" class="icon-heart"></a> </div>
            <div class="center">
              <div class="jp-playlist">
                <ul>
                  <li></li>
                </ul>
              </div>
            </div>
            <div class="right"> <a href="javascript:;" class="icon-repeat"></a> <a href="javascript:;" class="icon-share"></a> </div>
            <div class="progress jp-seek-bar" style="width: 100%;margin-top: 10px;top: 67px;margin-bottom: 0px;"> <span class="jp-play-bar" style="width: 0%"></span> </div>
          </div>
          <div class="controls">
            <div class="current jp-current-time">00:00</div>
            <div class="play-controls">
              <a href="javascript:;" class="icon-previous jp-previous" title="previous"></a>
              <a href="javascript:;" class="icon-play jp-play" id="playMusic" title="play"></a>
              <a href="javascript:;" class="icon-pause jp-pause" title="pause"></a>
              <a href="javascript:;" class="icon-next jp-next" title="next"></a>
            </div>
            <div class="volume-level jp-volume-bar">
              <span class="jp-volume-bar-value" style="width: 0%"></span>
              <a href="javascript:;" class="icon-volume-up jp-volume-max" title="max volume"></a>
              <a href="javascript:;" class="icon-volume-down jp-mute" title="mute"></a>
            </div>
          </div>
          <div id="jquery_jplayer" class="jp-jplayer"></div>
        </div>
      </div>
      <!--blogs end-->
  </div>
</div>
<!--  foot -->
<jsp:include page="foot.jsp"></jsp:include>
<%--<script src="http://www.lanrenzhijia.com/ajaxjs/jquery.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/resources/music/js/jquery.jplayer.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/music/js/jplayer.playlist.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/music/js/lanrenzhijia.js"></script>
<script type="text/javascript">
  // 两秒后模拟点击
  setTimeout(function() {
    // IE
    if(document.all) {
      document.getElementById("playMusic").click();
    }
    // 其它浏览器
    else {
      var e = document.createEvent("MouseEvents");
      e.initEvent("click", true, true);
      document.getElementById("playMusic").dispatchEvent(e);
    }
  }, 2000);
</script>
</body>
</html>
