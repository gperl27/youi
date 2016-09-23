'use strict'

$(document).on('turbolinks:load', function(){
  //do a CSS transformation when the page loads
  var selector = $(`.good`).data("selector");
  caseHandler(selector);

  //trigger css change and send data to the server
  $('.good').on('click', getAllCSS); 

  //trigger css change with no ajax
  $('.bad').on('click', handleBadClick);
});


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/** AJAX **/

function getAllCSS(e){
  //get data from 'add' class
  var target = e.target;
  var selector = $(target).data("selector");

  //store data to use for AJAX & controller
  var id = $(target).data("id");
  var model = $(target).data("model");

  //get CSS properties of current component
  var css = $(`.${selector}`).css();

  $.ajax({
    type: 'post',
    url: `/train/${model}/${id}`,
    data: css,
    success: handleData,
    error: handleError
  });
}


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Handlers */

function handleData(response){
  var selector = response[0];
  caseHandler(selector);
}

function handleError(err){
  console.log('ERROR');
  console.log(err);
}

function handleBadClick(e){
  var target = e.target;
  var selector = $(target).data("selector");
  caseHandler(selector);
}


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Case-specific CSS Augmentations */

function augmentH1(selector){
  var props = generateProperties(selector, 
      ["fontSize", "letterSpacing", "fontWeight", "textTransform", "color"]);
  invokeProps(props);
}

function augmentH2(selector, properties){
  var props = generateProperties(selector, 
      ["fontSize", "letterSpacing", "fontWeight", "textTransform", "wordSpacing"]);
  invokeProps(props);
}
/* Function to handle selector Cases */

function caseHandler(selector){
  switch(selector){
    case "h1_header":
      augmentH1(selector);
    case "h2-selector":
      augmentH2(selector);
      break;
  }
}