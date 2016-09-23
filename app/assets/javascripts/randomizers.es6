/* Randomizers */
/* These functions generate random metrics used throughout the application
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

function randomNumber(num){
  return Math.floor((Math.random() * num));
}

function randomColor(){
  return Math.floor(Math.random()*16777215).toString(16);
}