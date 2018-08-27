$(function(){
  // hide the div
  $('.hidden-background').hide()
  // loop through each row and attach the background image
  $('.hidden-background').each(function(){
    var img = $(this).text();
    $(this).parent().css({backgroundImage: 'url('+img+')', backgroundSize: 'cover'});
  })
})
