class H1sController < ApplicationController
  def create
    @h1 = H1.find(params[:id])
    
    font_size = params["font-size"]
    letter_spacing = params["letter-spacing"]
    font_weight = params["font-weight"]
    text_transform = params["text-transform"]

    @h1.h1_properties.create(
        fontsize: font_size,
        letterspacing: letter_spacing,
        fontweight: font_weight,
        texttransformation: text_transform
      )

    data = "h1_header"
    render json: [data]
  end
end
