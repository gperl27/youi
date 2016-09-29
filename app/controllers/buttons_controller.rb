class ButtonsController < ApplicationController
  def create
    id = params[:id]
    @button = Button.find(id)

    font_size = params["font-size"]
    letter_spacing = params["letter-spacing"]
    font_weight = params["font-weight"]
    text_transform = params["text-transform"]
    padding = params["padding"]
    border = params["border"]
    border_radius = params["border-radius"]
    border_style = params["border-style"]

    #delegate colors
    hsl_color = params["hsl-color"]
    hsl_color_hue = hsl_color[0]
    hsl_color_saturation = hsl_color[1]
    hsl_color_luminosity = hsl_color[2]

    hsl_border_color = params["hsl-border-color"]
    hsl_border_color_hue = hsl_border_color[0]
    hsl_border_color_saturation = hsl_border_color[1]
    hsl_border_color_luminosity = hsl_border_color[2]

    hsl_bg_color = params["hsl-bg-color"]
    hsl_bg_color_hue = hsl_bg_color[0]
    hsl_bg_color_saturation = hsl_bg_color[1]
    hsl_bg_color_luminosity = hsl_bg_color[2]

    @button.button_properties.create(
      fontsize: font_size, texttransformation: text_transform, fontweight: font_weight, letterspacing: letter_spacing, padding: padding,
      border: border, borderradius: border_radius, border_style: border_style, 
      border_hue: hsl_border_color_hue, border_saturation: hsl_border_color_saturation, border_luminosity: hsl_border_color_luminosity,
      bg_hue: hsl_bg_color_hue, bg_saturation: hsl_bg_color_saturation , bg_luminosity: hsl_bg_color_luminosity,
      color_hue: hsl_color_hue, color_saturation: hsl_color_saturation, color_luminosity: hsl_color_luminosity
    )

    data = "button-selector-#{id}"
    render json: [data,id]
  end

  def show
    changes(ButtonProperty)
    font_size_stats(ButtonProperty)
    font_weight_stats(ButtonProperty)
    letter_spacing_stats(ButtonProperty)
    text_transform_stats(ButtonProperty)
    border_stats(ButtonProperty)
    border_style(ButtonProperty)
    border_radius(ButtonProperty)
    color_stats(ButtonProperty)
    bg_stats(ButtonProperty)
    border_color_stats(ButtonProperty)
  end
end