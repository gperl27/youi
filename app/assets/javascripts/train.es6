$(document).on('turbolinks:load', function(){
  
  $('.good').on('click', getAllCSS); 
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


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Handlers */

function handleData(selector){
  //USE CASE STATEMENT

  console.log(selector);
  console.log();
  //render/generate new buttons here
  var fonts = [ "Arial", "Verdana", "Helvetica", "Georgia", "Palatino Linotype",
                "Times New Roman", "Arial Black", "Comic Sans MS", "Impact",
                "Lucida Sans Unicode", "Tahoma", "Trebuchet MS", "Verdana",
                "Courier New", "Lucida Console"
              ];
  var fontLength = fonts.length;

  var fontStyle = ["normal", "italic", "bold", "oblique"];
  var fontStyleLength = fontStyle.length;
  

  var fontWeight = generateRandom(1000);
  var border = generateRandom(20);
  var borderRadius = generateRandom(20);
  var boxShadow = generateRandom(20);
  var fontSize = generateRandom(82);
  var padding = generateRandom(100);

  $(`.${selector}`).css('color', `#${randomColor()}`);
  $(`.${selector}`).css('border', `${border}px solid #${randomColor()}`);
  $(`.${selector}`).css('border-radius', `${borderRadius}px`);
  $(`.${selector}`).css('box-shadow', `${generateRandom(20)}px ${generateRandom(20)}px ${generateRandom(20)}px  #${randomColor()}`);
  $(`.${selector}`).css('font-size', `${fontSize}px` );
  $(`.${selector}`).css('padding', `${padding}px`);
  $(`.${selector}`).css('background-color', `#${randomColor()}`);
  $(`.${selector}`).css('font-family', `${fonts[generateRandom(fontLength)]}`);
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
