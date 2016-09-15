// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/** Site JS **/

$(document).on('turbolinks:load', function(){
  $('.test').on('click', getAllCSS)
});

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/** AJAX **/

function getAllCSS(e){
  var css = $(e.currentTarget).css();
  console.log(css);

  $.ajax({
    type: 'post',
    url: '/data',
    data: css,
    success: handleData,
    error: handleError
  });

}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Handlers */

function handleData(response){
  //render/generate new buttons here
  console.log('test');
  $("body").append('<p>test</p>');
}

function handleError(err){
  console.log('Error!');
  console.log(err);
}