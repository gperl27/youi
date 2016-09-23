/* Randomizers */
/* These functions generate random metrics used throughout the application
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

function randomNumber(num){
  return Math.floor((Math.random() * num));
}

function randomColor(){
  var h = randomNumber(360);
  var s = randomNumber(100);
  var l = randomNumber(100);

  var hsl = [h,s,l];
  return hsl;
}