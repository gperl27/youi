/** Returns an array of HSL properties from a given object an CSS property **/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

function getColor(obj, property){
  var property = obj[property];
  
  var rgb = splitRgb(property);

  var r = parseInt(rgb[0], 10);
  var g = parseInt(rgb[1], 10);
  var b = parseInt(rgb[2], 10);

  //actually conversion
  var hsl = rgbToHsl(r,g,b);

  //round numbers and make them CSS ready
  hsl = cleanHsl(hsl);

  return hsl;
}