/* Randomizers */
/* These functions generate random metrics used throughout the application
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

function randomNumber(num){
  return Math.floor((Math.random() * num));
}

function randomColor(){
  var r = randomNumber(256);
  var g = randomNumber(256);
  var b = randomNumber(256);

  var rgb = [r,g,b];
  return rgb;
}