// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's 
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .


// スクロールするとnavの色を変える
// https://stackoverflow.com/questions/23706003/changing-nav-bar-color-after-scrolling
$(document).ready(function(){
   var scroll_start = 0;
   var mainNav = $('#mainNav');
   var offset = mainNav.offset();

   if (mainNav.length){
    $(document).scroll(function() {
      scroll_start = $(this).scrollTop();
      if(scroll_start > offset.top) {
        $(".navbar-default").css('background-color', '#f0f0f0');
        $(".navbar-brand").css('color', '#000');
        $(".nav-link").css('color', '#000');
      } else {
        $('.navbar-default').css('background-color', 'transparent');
        $(".navbar-brand").css('color', '#FFF');
        $(".nav-link").css('color', '#FFF');
      }
    });
  }
});
