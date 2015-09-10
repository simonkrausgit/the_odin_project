var sliderint = 1;
var sliderNext = 2;

$(document).ready(function(){
  $('#slider > img#1').fadeIn(400);
  startSlider();
});

var startSlider = function(){
  count = $('#slider > img').size();
  loop = setInterval(function(){

    $('#slider > img').fadeOut(300);
    $('#slider > img#' + sliderNext).fadeIn(400);

    sliderInt=sliderNext;
    sliderNext++;
    if(sliderNext > count){
      sliderNext = 1;
      sliderInt = 1;
    }
  },2000);};

  var prev = function(){
    showSlide(sliderInt -1);

  };
  var next = function(){
    showSlide(sliderInt +1);

  };
  var stopLoop = function(){
    window.clearInterval(loop);
  };
  var showSlide = function(id){
      stopLoop();
      if(id > count){
        id = 1;
      }else if(id<1){
        id = count;
      }
      $('#slider > img').fadeOut(300);
      $('#slider > img#' + id).fadeIn(400);

      sliderInt = id;
      sliderNext = id + 1;
      startSlider();
    };
$('#slider > img').hover(function(){
  stopLoop();
}, function(){
  startSlider();
});
