$(document).ready(function(){
  setEventListners();
});

function setEventListners(){
  $('.video-thumb-mobile').each(function(){
    var player = $(this);
    player.click(function(){
      var replaceMe = $(this);
      var code = replaceMe.data('videoCode');
      var title = replaceMe.data('videoTitle');
      var video = mobilePlayer(code, title);
      replaceMe.html(video);
    });
  });
}

function playerDesktop(videoId, title){
  var str = '<iframe id="video-player" src="//player.vimeo.com/video/';
    str += videoId;
    str += '"';
    str += 'width="320" height="auto" frameborder="0" byline="0" color="ce3229" title="0" badge="0" autoplay="true" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""> </iframe>';
    str += ("<br/>" + title);
    return str;
}

function mobilePlayer(videoId, title){
  var str = '<iframe id="video-player" src="//player.vimeo.com/video/';
    str += videoId;
    str += '" width="320px" height="320px" frameborder="0" byline="0" color="ce3229" title="0" badge="0" autoplay="1" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>';
    str += ("<br/>" + title);
    return str;
}
