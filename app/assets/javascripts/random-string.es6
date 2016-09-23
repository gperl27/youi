class RandomString {
  constructor(selector, propName, stringArray){
    this.selector = selector;
    this.propName = propName;
    this.stringArray = stringArray;
    this.length = stringArray.length;
  }
  random(){
    return $(`.${this.selector}`).css(`${this.propName}`, 
                                      `${this.stringArray[randomNumber(this.length)]}`);
  }
}