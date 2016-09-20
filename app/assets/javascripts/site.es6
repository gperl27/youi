// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/** Site JS **/

$(document).on('turbolinks:load', function(){
  $('.test').on('click', getAllCSS)
});


$(document).ready(function(){
  
   $('.edit').on('click', toggleEdit);
  
  $('.body').on('click', function(e){
    console.log(e.target);
    var targ = e.target;
    console.log(targ);
    var cl = $(targ).attr('class');
    var select = cl.split(" ")[0];
    console.log(select);
    console.log($(targ).data("property"));
  })
});

function toggleEdit(){
  var text = $('.edit-mode').text();
     $('.edit-mode').text(
    text == "On" ? "Off" : "On");
     $('.active').toggleClass('component');
     $('.active-section').toggleClass('section');
}