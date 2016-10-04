class RandomColor {
  constructor(selector, propName){
    this.selector = selector,
    this.propName = propName,
    this.colorArray = randomColor();
  }

  random(){
    var r,g,b;
    r = this.colorArray[0];
    g = this.colorArray[1];
    b = this.colorArray[2];

    var html = `<p>${this.propName}: <span class='properties'>rgb(${r}, ${g}, ${b})</span></p>`
    $('.current-styles').append(html);
    return $(`.${this.selector}`).css(`${this.propName}`, 
                                  `rgb(${r},
                                       ${g},
                                       ${b})
                                       `);
  }
}

