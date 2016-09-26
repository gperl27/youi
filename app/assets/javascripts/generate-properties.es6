function generateProperties(selector, wantedProps){
  /** Eventually fill this with props we want **/
  var PROPERTIES = [];
  
  /** Props that contain pixels **/
  var fontSize = new RandomPx(selector, "font-size", 82);
  var letterSpacing = new RandomPx(selector, "letter-spacing", 20);
  var wordSpacing = new RandomPx(selector, "word-spacing", 20);
  var padding = new RandomPx(selector, "padding", 100);
  var border = new RandomPx(selector, "border", 20);
  var borderRadius = new RandomPx(selector, "border-radius", 20);



  /* NOT INCLUDING BOX SHADOW BC IT IS DIFFICULT TO COMBINE COLOR & PIXELS */
  //var boxShadow = new RandomPx(selector, "box-shadow", 20);



  /** Props that contain strings **/
  var fontWeight = new RandomString(selector, "font-weight", 
                                    [100,200,300,400,500,600,700,800,900]);
  var textTransform = new RandomString(selector, "text-transform", 
                                        ["uppercase", "lowercase", "capitalize"]);
  var fonts = new RandomString(selector, "font-family",
              [ "Arial", "Verdana", "Helvetica", "Georgia", "Palatino Linotype",
                "Times New Roman", "Arial Black", "Comic Sans MS", "Impact",
                "Lucida Sans Unicode", "Tahoma", "Trebuchet MS", "Verdana",
                "Courier New", "Lucida Console"
              ]);
  var fontStyle = new RandomString(selector, "font-style", 
                        ["normal", "italic", "oblique"]);
  var borderStyle = new RandomString(selector, "border-style",
              ["hidden", "dotted", "dashed", "solid", "double",
               "groove", "ridge", "inset", "outset"
              ]);

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
    "borderStyle": borderStyle
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
