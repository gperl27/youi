class H2sController < ApplicationController
  def create
    @h2 = H2.find(params[:id])

    font_size = params["font-size"]
    letter_spacing = params["letter-spacing"]
    font_weight = params["font-weight"]
    text_transform = params["text-transform"]
    word_spacing = params["word-spacing"]

    @h2.h2_properties.create(
        fontsize: font_size,
        letterspacing: letter_spacing,
        fontweight: font_weight,
        texttransformation: text_transform
        wordspacing: word_spacing
      )

    data = "h2-selector"
    render json: [data]
  end
end
