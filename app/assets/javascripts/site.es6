/** Site JS **/
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

$(document).on('turbolinks:load', function(){
   $('.edit').on('click', toggleEdit);
   $('.explore').on('click', toggleExplore);
});


//toggles borders for components and sections
//edit button turns from on to off

function toggleEdit(){
  var text = $('.edit-mode').text();
     $('.edit-mode').text(
      text == "On" ? "Off" : "On");
     $('.active').toggleClass('component');
     //$('.active-section').toggleClass('section');
}

function toggleExplore(){
  var text = $('.explore-mode').text();
     $('.explore-mode').text(
      text == "On" ? "Off" : "On");
     $('.can-explore').toggleClass('exploring');

      if($('.can-explore').hasClass('exploring')){
        console.log('yes');
        $('.can-explore').tooltip();
      } else {
        console.log('no');
        $('.can-explore').tooltip('destroy');
      }
}