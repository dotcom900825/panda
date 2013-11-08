/*var show_simple_alert = function(text) {
  var flash = "<div class='message' id='temp_flash'><div class='message-inside'><span class='message-text'>" + text + "</span><a class='dismiss' href='#'>×</a></div></div>";
  $(flash).prependTo('header');

  setTimeout(function() {
    $('#temp_flash').remove();
  }, 4000);
}; */


$(document).ready(function(){
  NProgress.start();
})

$(window).load(function(){
  NProgress.done();
})


