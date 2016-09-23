/** Helpers for converting rgb to hsl before sending data in AJAX **/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

function splitRgb(color){
  return color.match(/(\d+,\s\d+,\s\d+)/)[0]
                    .split(",");
}

function cleanHsl(colorArr){
  colorArr[0] *= 360;
  colorArr[1] *= 100;
  colorArr[2] *= 100;

  return colorArr.map(function(num){
    return Math.round(num);
  });
}