$(function(){
  // hide the div
  $('.hidden-background').hide()
  $('.hidden-background').each(function(){
    var img = $(this).text();
    $(this).parent().css({backgroundImage: 'url('+img+')', backgroundSize: 'cover'});
  })

})
