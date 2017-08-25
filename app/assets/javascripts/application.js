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
//= require rails-ujs
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google

// albums/_form.html.erb
function add_photo() {
  var photos_div = document.getElementById('photos');
  $(photos_div).prepend(
    '<input class="photo" name="images[]" type="file" />' +
    '<button type="button" onclick="delete_photo(this);">Delete photo</button>'
  );
}

function delete_photo (button) {
  $(button).prev().remove();
  $(button).remove();
}
