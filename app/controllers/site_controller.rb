class SiteController < ApplicationController
  # $count = 0

  before_action :h1_props, only: [:home, :show]
  before_action :h2_props, only: [:home, :show]
  before_action :button_props, only: [:home, :show]
  before_action :paragraph_props, only: [:home, :show]
  before_action :image_props, only: [:home, :show]

  def index
    redirect_to home_path
  end

  def home
  end

  def show
    @class = params[:class]
    @id = params[:id]
    @class << "-#{@id}"
    @model = params[:model]
  end

  private


  def h1_props
    h1 = H1.first.h1_properties

    # vote_count(h1)
    @h1_font_size = average(h1, "fontsize")
    @h1_font_weight = median(h1, "fontweight")
    @h1_text_transform = median(h1, "texttransformation")
    @h1_letter_spacing = average(h1, "letterspacing")
  end

  def h2_props
    h2 = H2.first.h2_properties
    # vote_count(h2)

    @h2_font_size = average(h2, "fontsize")
    @h2_font_weight = median(h2, "fontweight")
    @h2_text_transform = median(h2, "texttransformation")
    @h2_letter_spacing = average(h2, "letterspacing")
    @h2_word_spacing = average(h2, "wordspacing")
  end

  def button_props
    button = Button.first.button_properties
    # vote_count(button)

    @button_font_size = average(button, "fontsize")
    @button_font_weight = median(button, "fontweight")
    @button_text_transform = median(button, "texttransformation")
    @button_letter_spacing = average(button, "letterspacing")
    @button_padding = average(button, "padding")
    @button_border = average(button, "border")
    @button_border_radius = average(button, "borderradius")
    @button_border_style = median(button, "border_style")
    @button_color_hue = median(button, "color_hue")
    @button_color_saturation = median(button, "color_saturation")
    @button_color_luminosity = median(button, "color_luminosity")
    @button_border_color_hue = median(button, "border_hue")
    @button_border_color_saturation = median(button, "border_saturation")
    @button_border_color_luminosity = median(button, "border_luminosity")
    @button_bg_color_hue = median(button, "bg_hue")
    @button_bg_color_saturation = median(button, "bg_saturation")
    @button_bg_color_luminosity = median(button, "bg_luminosity")
  end

  def paragraph_props
    paragraph_1 = Paragraph.first.paragraph_properties
    paragraph_2 = Paragraph.find(2).paragraph_properties
    # vote_count(paragraph_1)
    # vote_count(paragraph_2)

    @paragraph_1_font_size = average(paragraph_1, "fontsize")
    @paragraph_1_text_align = median(paragraph_1, "textalign")
    @paragraph_1_padding = median(paragraph_1, "padding")
    @paragraph_1_indent = average(paragraph_1, "indent")
    @paragraph_1_word_spacing = average(paragraph_1, "wordspacing")

    @paragraph_2_font_size = average(paragraph_2, "fontsize")
    @paragraph_2_text_align = median(paragraph_2, "textalign")
    @paragraph_2_padding = median(paragraph_2, "padding")
    @paragraph_2_indent = average(paragraph_2, "indent")
    @paragraph_2_word_spacing = average(paragraph_2, "wordspacing")
  end

  def image_props
    image = Image.first.image_properties
    # vote_count(image)

    @image_padding = average(image, "padding")
    @image_border = average(image, "border")
    @image_border_radius = average(image, "borderradius")
    @image_height = average(image, "height")
    @image_width = average(image, "width")
    @image_border_color_hue = median(image, "border_hue")
    @image_border_color_saturation = median(image, "border_saturation")
    @image_border_color_luminosity = median(image, "border_luminosity")
  end
end