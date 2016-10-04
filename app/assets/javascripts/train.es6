'use strict'

$(document).on('turbolinks:load', function(){
    //make voting Gui draggable
  $("#dragme").draggable({
    cursor: "crosshair"
  });

  //bootstrap tooltip 'opt-in'
  $(function () {
    $('[data-toggle="tooltip"]').tooltip()
  });

  //easy copy for custom links
  var clip = new Clipboard('.copy');

  //feedback for copying
  // $('.copy').on('click', function(){
  //     $(this).tooltip('toggle');
  //   });



  //don't show tooltips until 'explore-mode' is clicked
  $('.can-explore').tooltip('destroy');
  //same with 'copy'
  // $('.copy').tooltip('destroy');


  //grab id of selector to set first component change on load
  var id = $('.good').data("id");

  //do a CSS transformation when the page loads
  var selector = $(`.good`).data("selector"); 
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
    url: `/${model}/${id}`,
    data: css,
    success: handleData,
    error: handleError
  });
}


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Handlers */

function handleData(response){
  var selector = response[0];
  var id = parseInt(response[1], 10);
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

function augmentHeading(selector){
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

function augmentImage(selector){
  var props = generateProperties(selector,
      ["height", "width", "padding", "border", "borderRadius", "borderColor"]);
  invokeProps(props);
}

function augmentSection(selector){
  var props = generateProperties(selector,
      ["color", "bgColor"]);
  invokeProps(props);
}

function augmentBody(selector){
  var props = generateProperties(selector, ["fontFamily"]);
  invokeProps(props);
}

function augmentLi(selector){
  var props = generateProperties(selector,
    ["fontSize", "fontStyle", "letterSpacing", "textTransform"]);
  invokeProps(props);
}

/* Function to handle selector Cases */

function caseHandler(selector, id){
  //empty current styles div on click
  $('.current-styles').empty();

  //depending on the selector, augment css on good/bad click
  switch(selector){
    case `h1-selector-${id}`:
      augmentH1(selector);
      break;
    case `h2-selector-${id}`:
    case `h3-selector-${id}`:
    case `h4-selector-${id}`:
    case `h5-selector-${id}`:
      augmentHeading(selector);
      break;
    case `button-selector-${id}`:
      augmentButton(selector);
      break;
    case `paragraph-selector-${id}`:
      augmentParagraph(selector);
      break;
    case `image-selector-${id}`:
      augmentImage(selector);
      break;
    case `section-selector-${id}`:
      augmentSection(selector);
      break;
    case `body-selector-${id}`:
      augmentBody(selector);
      break;
    case `li-selector-${id}`:
      augmentLi(selector);
      break;
  }
}