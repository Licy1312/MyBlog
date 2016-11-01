$(document).ready(function(){

  var playlist = [{
      title:"月半小夜曲 - 李克勤",
      artist:"李克勤",
      mp3:"resources/music/MP3/2.mp3",
      poster: ""
    },{
      title:"Cro Magnon Man",
      artist:"The Stark Palace",
      mp3:"http://demo.lanrenzhijia.com/2014/music0917/images/i2.mp3",
      poster: ""
    },{
      title:"丑八怪 - 薛之谦",
      artist: " 薛之谦",
      mp3: "resources/music/MP3/1.mp3",
      poster: ""
  }];
  
  var cssSelector = {
    jPlayer: "#jquery_jplayer",
    cssSelectorAncestor: ".music-player"
  };
  
  var options = {
    swfPath: "http://cdnjs.cloudflare.com/ajax/libs/jplayer/2.6.4/jquery.jplayer/Jplayer.swf",
    supplied: "ogv, m4v, oga, mp3"
  };
  var myPlaylist = new jPlayerPlaylist(cssSelector, playlist, options);
});