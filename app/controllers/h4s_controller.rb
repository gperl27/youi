class H4sController < ApplicationController
    def create
    id = params[:id]
    @h4 = H4.find(params[:id])

    font_size = params["font-size"]
    letter_spacing = params["letter-spacing"]
    font_weight = params["font-weight"]
    text_transform = params["text-transform"]
    word_spacing = params["word-spacing"]

    @h4.h4_properties.create(
        fontsize: font_size,
        letterspacing: letter_spacing,
        fontweight: font_weight,
        texttransformation: text_transform,
        wordspacing: word_spacing
      )

    data = "h4-selector-#{id}"
    render json: [data,id]
  end
end
