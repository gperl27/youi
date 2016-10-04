class RandomString {
  constructor(selector, propName, stringArray){
    this.selector = selector;
    this.propName = propName;
    this.stringArray = stringArray;
    this.length = stringArray.length;
  }
  random(){
    var randomStr = this.stringArray[randomNumber(this.length)];
    var html = `<p>${this.propName}: <span class='properties'>${randomStr}</span></p>`
    $('.current-styles').append(html);
    return $(`.${this.selector}`).css(`${this.propName}`, 
                                      `${randomStr}`);
  }
}