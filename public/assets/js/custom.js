// JavaScript Document
$(window).scroll(function() {
    var scroll = $(window).scrollTop();

    if (scroll >= 50) {
        $('.body').css({ 'padding-top': '80px'});
        $("#header").addClass("darkHeader");
    } else {
        $("#header").removeClass("darkHeader");
        $('.body').css({ 'padding-top': '0' });
    }

});



 $('.products-sldier').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  //fade: true,
  asNavFor: '.products-sldier-nav'
});
$('.products-sldier-nav').slick({
  slidesToShow: 5,
  slidesToScroll: 1,
  asNavFor: '.products-sldier',
  dots: false,
  centerMode: false,
  focusOnSelect: true,
 responsive: [
    {
      breakpoint: 767,
      settings: {
        slidesToShow: 3,
        slidesToScroll:1,
        infinite: true,
        variableWidth: false,
        arrows:false,
        dots: false
      }
    }
      ]

});





$('.home_banner').slick({
dots: true,
arrows:false,
  autoplay: true,
  autoplaySpeed: 2000,
});


$('.home_product_slider').slick({
dots: true,
arrows:false,
 slidesToShow: 6,
slidesToScroll:1,
prevArrow: '<button class="slide-arrow prev-arrow">PREV</button>',
    nextArrow: '<button class="slide-arrow next-arrow">NEXT</button>',
     responsive: [
    {
      breakpoint: 767,
      settings: {
        slidesToShow: 1,
        slidesToScroll:1,
        infinite: true,
        variableWidth: false,
          centerMode: true,
       centerPadding: '60px',
        arrows:true,
        dots: false
      }
    }
      ]
});


(function($) {
$.fn.menumaker = function(options) {
 var cssmenu = $(this), settings = $.extend({
   format: "dropdown",
   sticky: false
 }, options);
 return this.each(function() {
   $(this).find(".button").on('click', function(){
     $(this).toggleClass('menu-opened');
     var mainmenu = $(this).next('ul');
     if (mainmenu.hasClass('open')) {
       mainmenu.slideToggle().removeClass('open');
     }
     else {
       mainmenu.slideToggle().addClass('open');
       if (settings.format === "dropdown") {
         mainmenu.find('ul').show();
       }
     }
   });
   cssmenu.find('li ul').parent().addClass('has-sub');
multiTg = function() {
     cssmenu.find(".has-sub").prepend('<span class="submenu-button"></span>');
     cssmenu.find('.submenu-button').on('click', function() {
       $(this).toggleClass('submenu-opened');
       if ($(this).siblings('ul').hasClass('open')) {
         $(this).siblings('ul').removeClass('open').slideToggle();
       }
       else {
         $(this).siblings('ul').addClass('open').slideToggle();
       }
     });
   };
   if (settings.format === 'multitoggle') multiTg();
   else cssmenu.addClass('dropdown');
   if (settings.sticky === true) cssmenu.css('position', 'fixed');
resizeFix = function() {
  var mediasize = 767;
     if ($( window ).width() > mediasize) {
       cssmenu.find('ul').show();
     }
     if ($(window).width() <= mediasize) {
       cssmenu.find('ul').hide().removeClass('open');
     }
   };
   resizeFix();
   return $(window).on('resize', resizeFix);
 });
  };
})(jQuery);

(function($){
$(document).ready(function(){
$("#cssmenu").menumaker({
   format: "multitoggle"
});
});
})(jQuery);
