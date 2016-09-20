class H1sController < ApplicationController
  def create
    @h1 = H1.find(params[:id])

    font_size = params["font-size"]
    p font_size

    # t.integer :fontsize
    #   t.integer :letterspacing
    #   t.string :texttransformation
    #   t.integer :fontweight


    @h1.h1_properties.create(
        fontsize: font_size,
        letterspacing: 14,
        fontweight: 700,
        texttransformation: "test"
      )
  end
end
