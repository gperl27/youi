function generateProperties(selector, wantedProps){
  /** Eventually fill this with props we want **/
  var PROPERTIES = []
  
  /** Props that contain pixels **/
  var fontSize = new RandomPx(selector, "font-size", 82);
  var letterSpacing = new RandomPx(selector, "letter-spacing", 20);
  var wordSpacing = new RandomPx(selector, "word-spacing", 20);


  /** Props that contain strings **/
  var fontWeight = new RandomString(selector, "font-weight", 
                                    [100,200,300,400,500,600,700,800,900]);
  var textTransform = new RandomString(selector, "text-transform", 
                                        ["uppercase", "lowercase", "capitalize"]);

  var properties = {
    "fontSize": fontSize,
    "letterSpacing": letterSpacing,
    "fontWeight": fontWeight,
    "textTransform": textTransform,
    "wordSpacing": wordSpacing
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
