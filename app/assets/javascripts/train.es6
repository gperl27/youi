'use strict'

$(document).on('turbolinks:load', function(){
  
  $('.good').on('click', getAllCSS); 
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

  console.log(css);

  $.ajax({
    type: 'post',
    url: `/train/${model}/${id}`,
    //url: `/train/h1/1`,
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

  switch(selector){
    case "h1_header":
      augmentH1(selector);
      break;
  }

  //augmentH1(selector);

}

function handleError(err){
  console.log('ERROR');
  console.log(err);
}


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Helpers */

function generateRandom(num){
  return Math.floor((Math.random() * num));
}

var randomColor = () => {
  return Math.floor(Math.random()*16777215).toString(16);
}


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Case-specific CSS Augmentations */

function augmentH1(selector){
  var fontSize = generateRandom(82);
  var letterSpacing = generateRandom(8);

  var fontWeight = [0,100,200,300,400,500,600,700,800,900];
  var weightLength = fontWeight.length;

  var textTransform = ["uppercase", "lowercase", "capitalize"];
  var textTransformLength = textTransform.length;


  $(`.${selector}`).css('font-size', `${fontSize}px` );
  $(`.${selector}`).css('letter-spacing', `${letterSpacing}px` );
  $(`.${selector}`).css('font-weight', `${fontWeight[generateRandom(weightLength)]}`);
  $(`.${selector}`).css('text-transform', `${textTransform[generateRandom(textTransformLength)]}`);
}