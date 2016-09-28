class RandomPx {
  constructor(selector, propName, pixels){
    this.selector = selector;
    this.propName = propName;
    this.pixels = randomNumber(pixels);
  }

  random(){
    var html = `<p>${this.propName}: ${this.pixels}px</p>`
    $('.current-styles').append(html);
    return $(`.${this.selector}`).css(`${this.propName}`, `${this.pixels}px`);
  }

}