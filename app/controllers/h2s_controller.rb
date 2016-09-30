class H2sController < ApplicationController
  # before_action :font_size_stats, only: [:show]
  # before_action :letter_spacing_stats, only: [:show]
  # before_action :font_weight_stats, only: [:show]
  # before_action :text_transform_stats, only: [:show]

  def create
    id = params[:id]
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
        texttransformation: text_transform,
        wordspacing: word_spacing
      )

    data = "h2-selector-#{id}"
    render json: [data,id]
  end

  def show
    changes(H2Property)
    font_size_stats(H2Property)
    font_weight_stats(H2Property)
    letter_spacing_stats(H2Property)
    text_transform_stats(H2Property)
    word_spacing_stats(H2Property)
  end
end
