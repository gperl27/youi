class SectionsController < ApplicationController
  def create
    id = params[:id]
    @section = Section.find(id)

    color = params["hsl-color"]
    color_hue = color[0]
    color_saturation = color[1]
    color_luminosity = color[2]

    bg = params["hsl-bg-color"]
    bg_hue = bg[0]
    bg_saturation = bg[1]
    bg_luminosity = bg[2]

    @section.section_properties.create!(
      color_hue: color_hue, color_luminosity: color_luminosity, color_saturation: color_saturation,
      bg_hue: bg_hue, bg_luminosity: bg_luminosity, bg_saturation: bg_saturation
    )

    data = "section-selector-#{id}"
    render json: [data,id]
  end
end
