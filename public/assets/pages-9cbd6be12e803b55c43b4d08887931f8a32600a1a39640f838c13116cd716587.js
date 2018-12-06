(function() {
  $(document).on('turbolinks:load', function() {
    $('.navbar-nav').css('background-color', '#364253');
    $('.navbar-nav').css('border-bottom', '1px solid black');
    return $('#full-navbar').css('z-index', 9);
  });

}).call(this);
