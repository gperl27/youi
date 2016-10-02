class H3sController < ApplicationController
  def create
    id = params[:id]
    @h3 = H3.find(params[:id])

    font_size = params["font-size"]
    letter_spacing = params["letter-spacing"]
    font_weight = params["font-weight"]
    text_transform = params["text-transform"]
    word_spacing = params["word-spacing"]

    @h3.h3_properties.create(
        fontsize: font_size,
        letterspacing: letter_spacing,
        fontweight: font_weight,
        texttransformation: text_transform,
        wordspacing: word_spacing
      )

    data = "h3-selector-#{id}"
    render json: [data,id]
  end

  def show
    changes(H3Property)
    font_size_stats(H3Property)
    font_weight_stats(H3Property)
    letter_spacing_stats(H3Property)
    text_transform_stats(H3Property)
    word_spacing_stats(H3Property)

    @cookie = User.find_by(id: session[:user_id]).cookie_id
  end
end
