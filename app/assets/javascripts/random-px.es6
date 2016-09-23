class RandomPx {
  constructor(selector, propName, pixels){
    this.selector = selector;
    this.propName = propName;
    this.pixels = randomNumber(pixels);
  }

  random(){
    return $(`.${this.selector}`).css(`${this.propName}`, `${this.pixels}px`);
  }

}