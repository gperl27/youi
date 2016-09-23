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
  //USE CASE STATEMENT
  var selector = response[0];
  // //render/generate new buttons here
  // var fonts = [ "Arial", "Verdana", "Helvetica", "Georgia", "Palatino Linotype",
  //               "Times New Roman", "Arial Black", "Comic Sans MS", "Impact",
  //               "Lucida Sans Unicode", "Tahoma", "Trebuchet MS", "Verdana",
  //               "Courier New", "Lucida Console"
  //             ];
  // var fontLength = fonts.length;

  // var fontStyle = ["normal", "italic", "bold", "oblique"];
  // var fontStyleLength = fontStyle.length;
  

  // var fontWeight = generateRandom(1000);
  // var border = generateRandom(20);
  // var borderRadius = generateRandom(20);
  // var boxShadow = generateRandom(20);
  // var fontSize = generateRandom(82);
  // var padding = generateRandom(100);

  // $(`.${selector}`).css('color', `#${randomColor()}`);
  // $(`.${selector}`).css('border', `${border}px solid #${randomColor()}`);
  // $(`.${selector}`).css('border-radius', `${borderRadius}px`);
  // $(`.${selector}`).css('box-shadow', `${generateRandom(20)}px ${generateRandom(20)}px ${generateRandom(20)}px  #${randomColor()}`);
  // $(`.${selector}`).css('font-size', `${fontSize}px` );
  // $(`.${selector}`).css('padding', `${padding}px`);
  // $(`.${selector}`).css('background-color', `#${randomColor()}`);
  // $(`.${selector}`).css('font-family', `${fonts[generateRandom(fontLength)]}`);

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
      ["fontSize", "letterSpacing", "fontWeight", "textTransform"]);
  invokeProps(props);
}

function augmentH2(selector, properties){

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