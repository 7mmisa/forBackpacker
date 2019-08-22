$(window).load(function() {
  $('.slick').fadeIn(100); 
    $(function() {
      $('.slick').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 4000,
        speed: 800
      });
    });
  $('.slick-dots li').on('mouseover', function() {
    $('.slick').slick('goTo', $(this).index());
  });
});