function generateProperties(selector, wantedProps){
  /** Eventually fill this with props we want **/
  var PROPERTIES = [];
  
  /** Props that contain pixels **/
  var fontSize = new RandomPx(selector, "font-size", 54);
  var letterSpacing = new RandomPx(selector, "letter-spacing", 20);
  var wordSpacing = new RandomPx(selector, "word-spacing", 20);
  var padding = new RandomPx(selector, "padding", 50);
  var border = new RandomPx(selector, "border", 20);
  var borderRadius = new RandomPx(selector, "border-radius", 20);
  var indent = new RandomPx(selector, "text-indent", 35);
  var height = new RandomPx(selector, "height", 500);
  var width = new RandomPx(selector, "width", 500);


  /* NOT INCLUDING BOX SHADOW BC IT IS DIFFICULT TO COMBINE COLOR & PIXELS */
  //var boxShadow = new RandomPx(selector, "box-shadow", 20);



  /** Props that contain strings **/
  var fontWeight = new RandomString(selector, "font-weight", 
                                    [100,200,300,400,500,600,700,800,900]);
  var textTransform = new RandomString(selector, "text-transform", 
                                        ["uppercase", "lowercase", "capitalize"]);
  var fonts = new RandomString(selector, "font-family",
              [ "Arial", "Georgia","Comic Sans MS", "Courier New"]);
  var fontStyle = new RandomString(selector, "font-style", 
                        ["normal", "italic", "oblique"]);
  var borderStyle = new RandomString(selector, "border-style",
              ["hidden", "dotted", "dashed", "solid", "double",
               "groove", "ridge", "inset", "outset"
              ]);
  var textAlign = new RandomString(selector, "text-align",
                  ["center", "left", "right", "justify"]);

  /** Props for color **/
  var color = new RandomColor(selector, "color");
  var borderColor = new RandomColor(selector, "border-color");
  var bgColor = new RandomColor(selector, "background-color");

    //bg color


  /** Fill object for extraction **/
  var properties = {
    "fontSize": fontSize,
    "letterSpacing": letterSpacing,
    "fontWeight": fontWeight,
    "textTransform": textTransform,
    "wordSpacing": wordSpacing,
    "padding": padding,
    "border": border,
    "borderRadius": borderRadius,
    "fontFamily": fonts,
    "fontStyle": fontStyle,
    "color": color,
    "borderColor": borderColor,
    "bgColor": bgColor,
    "borderStyle": borderStyle,
    "indent": indent,
    "textAlign": textAlign,
    "height": height,
    "width": width
  }

  /** This function helps identify which variable(s) to use because we are passing an array of strings **/
  wantedProps.forEach(function(prop){
    PROPERTIES.push(properties[prop]);
  });

  return PROPERTIES;
}

function invokeProps(props){
  props.forEach(function(prop){
    prop.random();
  });
}
