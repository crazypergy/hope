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
    '<input class="photo" name="images[]" type="file" onchange="display_picture_from(this);" />' +
    '<img src="#" alt=""/>' +
    '<button type="button" onclick="delete_photo(this);">Delete photo</button>'
  );
}

function display_picture_from(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
      $(input).next().attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);

    // Hide input button after attaching image
    input.style.display = "none";
  }
}

function delete_photo (button) {

  // Delete the img tag and the input tag before it
  for (var i = 0; i < 2; i++) {
    $(button).prev().remove();
  }

  // Delete the button itself
  $(button).remove();
}
