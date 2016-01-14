$(document).ready(function(){
  // var mobileDivs = getMobileDivs();
  // mobileDivs.each(function(e){
  //   var that = e;
  //   console.log(that);
  // });
  $('.mobile-player').each(function(){
    var player = $(this);
    player.click(function(){
      var replaceMe = $(this);
      var code = replaceMe.data('videoCode');
      var video = playerString(code);
      replaceMe.html(video);
    });
  });

  $('.video-thumb-mobile').each(function(){
    var player = $(this);
    player.click(function(){
      var replaceMe = $(this);
      var code = replaceMe.data('videoCode');
      var video = mobilePlayer(code);
      replaceMe.html(video);
    });
  });

});



function playerString(videoId){
  var str = '<iframe id="video-player" src="//player.vimeo.com/video/'
    str += videoId;
    str += '"';
    str += 'width="320" height="auto" frameborder="0" byline="0" color="ce3229" title="0" badge="0" autoplay="true" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""> </iframe>'
    return str;
}

function mobilePlayer(videoId){
  var str = '<iframe id="video-player" src="//player.vimeo.com/video/';
    str += videoId;
    str += '" width="100%" height="auto" frameborder="0" byline="0" color="ce3229" title="0" badge="0" autoplay="1" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>';
    return str;
}
