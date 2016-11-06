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

  <title>首页</title>
</head>
<body>

<!--  header -->
<jsp:include page="head.jsp"></jsp:include>

<div class="slider_bg"><!-- start slider -->
  <div class="container">
      <!--我的名片-->
      <div class="info" >
        <figure > <img src="${pageContext.request.contextPath}/resources/images/home.jpg"  alt="Panama Hat">
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
        <!--新添加的文章-->
        <ul class="bloglist" id="newNotes">
        </ul>

        <aside>
          <!--搜索-->
          <div class="search">
            <form class="searchform" method="get" action="#">
              <input type="text" name="s" value="Search" onfocus="this.value=''" onblur="this.value='Search'">
            </form>
          </div>
          <!--最近更新-->
          <div class="tuijian">
            <h2>最近更新</h2><a href="#" style="float: right;margin-top: -28px;text-decoration: none;">更多</a>
            <ol id="recently">
            </ol>
          </div>
          <!--文章目录-->
          <div class="toppic">
              <h2>文章目录</h2> <a href="#" style="float: right;margin-top: -28px;text-decoration: none;">更多</a>
            <ul id="menu">
            </ul>
          </div>
          <!--点击排行榜-->
          <div class="clicks">
            <h2>热门点击</h2><a href="#" style="float: right;margin-top: -28px;text-decoration: none;">更多</a>
            <ol id="hits">
            </ol>
          </div>
        </aside>
        <!--音乐盒-->
        <div class="music-player"  id="music" style="margin-top:0px;margin-right: 0px;margin-bottom: 0px;">
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
<!--利用js进行数据的渲染-->
<script type="text/javascript">
  window.onload = function () {
    //最近发布的5条数据
    var url = "${pageContext.request.contextPath}/fiveOrder";
    $.post(url,function(data){
      for(var i=0;i<data.length;i++){
        createLi(data[i],i+1);
      }
    });
    //最近更新的记录
    var update_url = "${pageContext.request.contextPath}/nineOrder";
    $.post(update_url,function(data){
      for(var i=0;i<data.length;i++){
        createUpdate(data[i],i+1);
      }
    });
    //目录
    var menu_url = "${pageContext.request.contextPath}/menus";
    $.post(menu_url,function(data){
      for(var i=0;i<data.length;i++){
        createMenu(data[i]);
      }
    });
    //点击率排行榜
    var hit_url = "${pageContext.request.contextPath}/nineHits";
    $.post(hit_url,function(data){
      for(var i=0;i<data.length;i++){
        createHits(data[i],i+1);
      }
    });
  }
  //最新文章
  function createLi(data,num) {
    var html = '<li>'+
      '<div class="arrow_box">'+
        '<div class="ti"></div>'+
        <!--三角形-->
        '<div class="ci"></div>'+
        <!--圆形-->
        '<h2 class="title"><a href="#" target="_blank">'+data.d_title+'</a></h2>'+
        '<ul class="textinfo">'+
          '<a href="/"><img src="${pageContext.request.contextPath}/resources/images/'+getImageUrl(num)+'"></a>'+
          '<p>'+ data.d_abstract+'</p>'+
        '</ul>'+
        '<ul class="details">'+
          '<li class="likes"><a href="#">10</a></li>'+
          '<li class="comments"><a href="#">34</a></li>'+
          '<li class="icon-time">'+timeStamp2String(data.create_time)+'</li>'+
        '</ul>'+
        '</div>'+
    '</li>';
    $(html).appendTo('#newNotes');
  };
  //目录
  function  createMenu(data){
    var html = '<li><a href="#">'+
            '&nbsp;'+data.note_name+'('+data.num+')'+
    '</a></li>';
    $(html).appendTo('#menu');
  }
  //最近更新的记录
  function createUpdate(data,num){
    var html = '<li><span><strong>'+num+
            '</strong></span><a href="#">'+data.d_title+'</a></li>';
    $(html).appendTo('#recently');
  }
  //点击率排行榜
  function createHits(data,num){
    var html = '<li><span><strong>'+num+
            '</strong></span><a href="#">'+data.d_title+'</a></li>';
    $(html).appendTo('#hits');
  }
  //将timeStamp转化成dateTime
  function timeStamp2String (time){
    var datetime = new Date();
    datetime.setTime(time);
    var year = datetime.getFullYear();
    var month = datetime.getMonth() + 1;
    var date = datetime.getDate();
    var hour = datetime.getHours();
    var minute = datetime.getMinutes();
    var second = datetime.getSeconds();
    return year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second;
  };
  function getImageUrl(temp){
    switch (temp){
      case 1:return "1.jpg";
      case 2:return "2.jpg";
      case 3:return "3.jpg";
      case 4:return "4.jpg";
      case 5:return "5.jpg";
    }
  }
</script>

</body>
</html>
