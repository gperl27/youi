class RandomColor {
  constructor(selector, propName){
    this.selector = selector,
    this.propName = propName,
    this.colorArray = randomColor();
  }

  random(){
    return $(`.${this.selector}`).css(`${this.propName}`, 
                                  `rgb(${this.colorArray[0]},
                                       ${this.colorArray[1]},
                                       ${this.colorArray[2]})
                                       `);
  }
}

