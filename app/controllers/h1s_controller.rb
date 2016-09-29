class H1sController < ApplicationController
  # before_action :font_size_stats, only: [:show]
  # before_action :letter_spacing_stats, only: [:show]
  # before_action :font_weight_stats, only: [:show]
  # before_action :text_transform_stats, only: [:show]

  def create
    id = params[:id]
    @h1 = H1.find(id)
    
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

    data = "h1-selector-#{id}"
    render json: [data,id]
  end

  def show
    changes(H1Property)
    font_size_stats(H1Property)
    font_weight_stats(H1Property)
    letter_spacing_stats(H1Property)
    text_transform_stats(H1Property)
  end
end
