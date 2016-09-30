class ListelementsController < ApplicationController
  def create
    id = params[:id]
    @li = Listelement.find(params[:id])

    font_size = params["font-size"]
    letter_spacing = params["letter-spacing"]
    text_transform = params["text-transform"]
    font_style = params["font-style"]
    

    @li.listelement_properties.create(
        fontsize: font_size,
        letterspacing: letter_spacing,
        texttransformation: text_transform,
        fontstyle: font_style
      )

    data = "li-selector-#{id}"
    render json: [data,id]
  end

  def show
    changes(ListelementProperty)
    font_size_stats(ListelementProperty)
    font_style_stats(ListelementProperty)
    letter_spacing_stats(ListelementProperty)
    text_transform_stats(ListelementProperty)
  end
end
