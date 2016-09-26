'use strict'

$(document).on('turbolinks:load', function(){

  var id = $('.good').data("id");

  //do a CSS transformation when the page loads
  var selector = $(`.good`).data("selector"); 
  // selector += `-${id}`;
  caseHandler(selector, id);
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
  // selector += `-${id}`;

  //get CSS properties of current component
  var css = $(`.${selector}`).css();

  //add hsl to the css object to be sent to AJAX
  css["hsl-color"] = getColor(css, "color");
  css["hsl-border-color"] = getColor(css, "border-color");
  css["hsl-bg-color"] = getColor(css, "background-color");


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
  var id = parseInt(response[1]);
  // if(id !== undefined){
  //   selector += `-${id}`;
  // }
  caseHandler(selector, id);
}

function handleError(err){
  console.log('ERROR');
  console.log(err);
}

function handleBadClick(e){
  var target = e.target;
  var selector = $(target).data("selector");
  var id = $('.good').data('id');
  caseHandler(selector, id);
}


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Case-specific CSS Augmentations */

function augmentH1(selector){
  var props = generateProperties(selector, 
      ["fontSize", "letterSpacing", "fontWeight", "textTransform"]);
  invokeProps(props);
}

function augmentH2(selector){
  var props = generateProperties(selector, 
      ["fontSize", "letterSpacing", "fontWeight", "textTransform", "wordSpacing"]);
  invokeProps(props);
}

function augmentButton(selector){
  var props = generateProperties(selector,
      ["fontSize", "letterSpacing", "fontWeight", "textTransform",
        "border", "borderRadius", "borderColor", "borderStyle", 
        "bgColor", "color"
      ]
    );
  invokeProps(props);
}

function augmentParagraph(selector){
  var props = generateProperties(selector,
      ["fontSize", "textAlign", "padding", "indent", "wordSpacing"]);
  invokeProps(props);
}
/* Function to handle selector Cases */

function caseHandler(selector, id){
  switch(selector){
    case `h1-selector-${id}`:
      augmentH1(selector);
      break;
    case `h2-selector-${id}`:
      augmentH2(selector);
      break;
    case `button-selector-${id}`:
      augmentButton(selector);
      break;
    case `paragraph-selector-${id}`:
      augmentParagraph(selector);
      break;
  }
}