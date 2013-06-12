$(document).ready(function() {
  $('.indiv_app').fadeTo(10, 0.5);
  $('html').css('background-color', '#252822');

  $('.indiv_app').on('mouseover', function(){

    var selected_app_id = $(this).attr('app_id');
    var background_color = $(this).attr('background_color');
    var text_color = $(this).attr('text_color');
    var number_of_sample_photos

    $('.descriptive_box').hide();
    $('.descriptive_box[app_id='+selected_app_id+']').show();


    $('html').css('background-color', '#' + background_color);
    $('html').css('color', '#' + text_color);

    $(this).fadeTo(10,1);
    $(this).siblings().fadeTo(10,0.5);
    $(this).siblings().css('margin-top', '0');
    $(this).siblings().animate({width: "18%"}, {duration: 222, queue: false});
    $(this).animate({width: "26%"}, {duration: 222, queue: false});

  });

});

