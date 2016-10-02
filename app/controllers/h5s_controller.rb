class H5sController < ApplicationController
  def create
    id = params[:id]
    @h5 = H5.find(params[:id])

    font_size = params["font-size"]
    letter_spacing = params["letter-spacing"]
    font_weight = params["font-weight"]
    text_transform = params["text-transform"]
    word_spacing = params["word-spacing"]

    @h5.h5_properties.create(
        fontsize: font_size,
        letterspacing: letter_spacing,
        fontweight: font_weight,
        texttransformation: text_transform,
        wordspacing: word_spacing
      )

    data = "h5-selector-#{id}"
    render json: [data,id]
  end

  def show
    changes(H5Property)
    font_size_stats(H5Property)
    font_weight_stats(H5Property)
    letter_spacing_stats(H5Property)
    text_transform_stats(H5Property)
    word_spacing_stats(H5Property)

    @cookie = User.find_by(id: session[:user_id]).cookie_id
  end
end
