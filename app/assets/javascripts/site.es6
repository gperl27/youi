// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
'use strict'


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/** Site JS **/

$(document).on('turbolinks:load', function(){
   $('.edit').on('click', toggleEdit);
});


//toggles borders for components and sections
//edit button turns from on to off

function toggleEdit(){
  var text = $('.edit-mode').text();
     $('.edit-mode').text(
    text == "On" ? "Off" : "On");
     $('.active').toggleClass('component');
     $('.active-section').toggleClass('section');
}