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

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Handlers */

function handleData(selector){
  console.log(selector);
  console.log();
  //render/generate new buttons here
  var fonts = [ "Arial", "Verdana", "Helvetica", "Georgia", "Palatino Linotype",
                "Times New Roman", "Arial Black", "Comic Sans MS", "Impact",
                "Lucida Sans Unicode", "Tahoma", "Trebuchet MS", "Verdana",
                "Courier New", "Lucida Console"
              ];
  var fontStyle = ["normal", "italic", "bold", "oblique"];
  var fontStyleLength = fontStyle.length;

  var fontLength = fonts.length;
  var border = generateRandom(20);
  var borderRadius = generateRandom(20);
  var boxShadow = generateRandom(20);
  var fontSize = generateRandom(82);
  var padding = generateRandom(100);

  console.log(border);
  $(`.${selector}`).css('color', `#${randomColor()}`);
  $(`.${selector}`).css('border', `${border}px solid #${randomColor()}`);
  $(`.${selector}`).css('border-radius', `${borderRadius}px`);
  $(`.${selector}`).css('box-shadow', `${generateRandom(20)}px ${generateRandom(20)}px ${generateRandom(20)}px  #${randomColor()}`);
  $(`.${selector}`).css('font-size', `${fontSize}px` );
  $(`.${selector}`).css('padding', `${padding}px`);
  $(`.${selector}`).css('background-color', `#${randomColor()}`);
  $(`.${selector}`).css('font-family', `${fonts[generateRandom(fontLength)]}`);

  // var border2 = generateRandom(20);
  // var borderRadius2 = generateRandom(20);
  // var boxShadow2 = generateRandom(20);
  // var fontSize2 = generateRandom(82);
  // var padding2 = generateRandom(100);

  // $('#secondChoice').css('color', `#${randomColor()}`);
  // $('#secondChoice').css('border', `${border2}px solid #${randomColor()}`);
  // $('#secondChoice').css('border-radius', `${borderRadius2}px`);
  // $('#secondChoice').css('box-shadow', `${generateRandom(20)}px ${generateRandom(20)}px ${generateRandom(20)}px  #${randomColor()}`);
  // $('#secondChoice').css('font-size', `${fontSize2}px` );
  // $('#secondChoice').css('padding', `${padding2}px`);
  // $('#secondChoice').css('background-color', `#${randomColor()}`);
  // $('#secondChoice').css('font-family', `${fonts[generateRandom(fontLength)]}`);
  // $('#secondChoice').css('font-style', `${fontStyle[generateRandom(fontStyleLength)]}`);

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