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

/*
 * TODO: Write Javascript tests
 *
 * Things are working fine for now, but I'm a little afraid of using #prev and #next here and there.
 * in #display_picture_from(input), the $(input).next().next().show() line is kind of scary.
 * Just make sure that in the midst of deleting tags and leaving other tags undeleted,
 * that everything will still work out fine.
 */

function add_photo_input() {
  var photos_div = document.getElementById('photos');

  // TODO: I don't like how type="file" makes the file name show up on the side of the button.
  // It's a dirty hack that I don't REALLY want to do, but it's possible to hide the input,
  // and make an entirely new button that will trigger #display_picture_from($(this).prev());.
  // Again, this could potentially make a mess with the #prev and #next stuff I was talking about
  // earlier, so try to think of a good, clean solution.
  var individual_photo_div =
    '<div class="photo_wrapper">' +
      '<input class="photo_input" name="images[]" type="file" onchange="display_picture_from(this);" />' +
      '<img src="#" alt=""/>' +
      '<button type="button" onclick="delete_photo(this);" style="display: none;">Delete photo</button>' +
    '</div>';

  $(photos_div).prepend(individual_photo_div);
}

function display_picture_from(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
      $(input).next().attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);

    // Hide input button after attaching image, show delete button, add another input tag
    input.style.display = "none";
    $(input).next().next().show();
    add_photo_input();
  }
}

function delete_photo(button) {
  // Delete the img tag and the input tag before it
  for (var i = 0; i < 2; i++) {
    $(button).prev().remove();
  }

  // Delete the button itself
  $(button).remove();
}
