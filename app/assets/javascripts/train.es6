$(document).on('turbolinks:load', function(){
  
  $('.good').on('click', getAllCSS); 



  // {
  //   var targ = e.target;
  //   console.log($(targ).data("selector"));

  //   $('.h1_header').on('click', getAllCSS);
  // })

});


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/** AJAX **/

function getAllCSS(e){
  var target = e.target;
  var selector = $(target).data("selector");
  var id = $(target).data("id");
  console.log(typeof selector);

  var css = $(`.${selector}`).css();
  console.log(css);

  $.ajax({
    type: 'post',
    url: `/train/${selector}/${id}`,
    data: css,
    success: handleData(selector),
    error: handleError
  });
}
