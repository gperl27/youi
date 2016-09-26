class SiteController < ApplicationController
  before_action :h1_props, only: [:home, :show]
  before_action :h2_props, only: [:home, :show]

  def index
    redirect_to home_path
  end

  def home
  end

  def show
    @class = params[:class]
    @id = params[:id]
    @model = params[:model]
  end

  private

  def h1_props
    h1 = H1.first.h1_properties

    @h1_font_size = average(h1, "fontsize")
    @h1_font_weight = median(h1, "fontweight")
    @h1_text_transform = median(h1, "texttransformation")
    @h1_letter_spacing = average(h1, "letterspacing")
  end

  def h2_props
    h2 = H2.first.h2_properties

    @h2_font_size = average(h2, "fontsize")
    @h2_font_weight = median(h2, "fontweight")
    @h2_text_transform = median(h2, "texttransformation")
    @h2_letter_spacing = average(h2, "letterspacing")
    @h2_word_spacing = average(h2, "wordspacing")
  end

  def button_props
    button = Button.first.h2_properties

    @button_font_size = average(button, "fontsize")
    @button_font_weight = median(button, "fontweight")
    @button_text_transform = median(button, "texttransformation")
    @button_letter_spacing = average(button, "letterspacing")
    @button_padding = average(button, "padding")
    @button_border = average(button, "border")
    @button_border_radius = average(button, "borderradius")
    @button_border_style = median(button, "border_style")
    

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
end