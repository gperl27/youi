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

    @button.button_properties.create!(
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
    @changes = ButtonProperty.count

    colors = ButtonProperty.all.map {|prop|
      [
        prop.color_hue, prop.color_saturation, prop.color_luminosity,
        prop.bg_hue, prop.bg_saturation, prop.bg_luminosity,
        prop.border_hue, prop.border_saturation, prop.border_luminosity,
      ]
    }

    p colors 
  end
end
