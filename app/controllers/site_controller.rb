class SiteController < ApplicationController
  # $count = 0

  before_action :h1_props, only: [:home, :show]
  before_action :h2_props, only: [:home, :show]
  before_action :h3_props, only: [:home, :show]
  before_action :h4_props, only: [:home, :show]
  before_action :h5_props, only: [:home, :show]
  before_action :button_props, only: [:home, :show]
  before_action :paragraph_props, only: [:home, :show]
  before_action :image_props, only: [:home, :show]
  before_action :section_props, only: [:home, :show]
  before_action :body_props, only: [:home, :show]
  before_action :li_props, only: [:home, :show]

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

  def h3_props
    h3 = H3.first.h3_properties
    # vote_count(h3)

    @h3_font_size = average(h3, "fontsize")
    @h3_font_weight = median(h3, "fontweight")
    @h3_text_transform = median(h3, "texttransformation")
    @h3_letter_spacing = average(h3, "letterspacing")
    @h3_word_spacing = average(h3, "wordspacing")
  end

  def h4_props
    h4 = H4.first.h4_properties
    # vote_count(h4)

    @h4_font_size = average(h4, "fontsize")
    @h4_font_weight = median(h4, "fontweight")
    @h4_text_transform = median(h4, "texttransformation")
    @h4_letter_spacing = average(h4, "letterspacing")
    @h4_word_spacing = average(h4, "wordspacing")
  end

  def h5_props
    h5 = H5.first.h5_properties
    # vote_count(h5)

    @h5_font_size = average(h5, "fontsize")
    @h5_font_weight = median(h5, "fontweight")
    @h5_text_transform = median(h5, "texttransformation")
    @h5_letter_spacing = average(h5, "letterspacing")
    @h5_word_spacing = average(h5, "wordspacing")
  end

  def button_props
    button_1 = Button.find(1).button_properties
    button_2 = Button.find(2).button_properties
    button_3 = Button.find(3).button_properties

      # vote_count(button)

    @button_1_font_size = average(button_1, "fontsize")
    @button_1_font_weight = median(button_1, "fontweight")
    @button_1_text_transform = median(button_1, "texttransformation")
    @button_1_letter_spacing = average(button_1, "letterspacing")
    @button_1_padding = average(button_1, "padding")
    @button_1_border = average(button_1, "border")
    @button_1_border_radius = average(button_1, "borderradius")
    @button_1_border_style = median(button_1, "border_style")
    @button_1_color_hue = median(button_1, "color_hue")
    @button_1_color_saturation = median(button_1, "color_saturation")
    @button_1_color_luminosity = median(button_1, "color_luminosity")
    @button_1_border_color_hue = median(button_1, "border_hue")
    @button_1_border_color_saturation = median(button_1, "border_saturation")
    @button_1_border_color_luminosity = median(button_1, "border_luminosity")
    @button_1_bg_color_hue = median(button_1, "bg_hue")
    @button_1_bg_color_saturation = median(button_1, "bg_saturation")
    @button_1_bg_color_luminosity = median(button_1, "bg_luminosity")

    @button_2_font_size = average(button_2, "fontsize")
    @button_2_font_weight = median(button_2, "fontweight")
    @button_2_text_transform = median(button_2, "texttransformation")
    @button_2_letter_spacing = average(button_2, "letterspacing")
    @button_2_padding = average(button_2, "padding")
    @button_2_border = average(button_2, "border")
    @button_2_border_radius = average(button_2, "borderradius")
    @button_2_border_style = median(button_2, "border_style")
    @button_2_color_hue = median(button_2, "color_hue")
    @button_2_color_saturation = median(button_2, "color_saturation")
    @button_2_color_luminosity = median(button_2, "color_luminosity")
    @button_2_border_color_hue = median(button_2, "border_hue")
    @button_2_border_color_saturation = median(button_2, "border_saturation")
    @button_2_border_color_luminosity = median(button_2, "border_luminosity")
    @button_2_bg_color_hue = median(button_2, "bg_hue")
    @button_2_bg_color_saturation = median(button_2, "bg_saturation")
    @button_2_bg_color_luminosity = median(button_2, "bg_luminosity")

    @button_3_font_size = average(button_3, "fontsize")
    @button_3_font_weight = median(button_3, "fontweight")
    @button_3_text_transform = median(button_3, "texttransformation")
    @button_3_letter_spacing = average(button_3, "letterspacing")
    @button_3_padding = average(button_3, "padding")
    @button_3_border = average(button_3, "border")
    @button_3_border_radius = average(button_3, "borderradius")
    @button_3_border_style = median(button_3, "border_style")
    @button_3_color_hue = median(button_3, "color_hue")
    @button_3_color_saturation = median(button_3, "color_saturation")
    @button_3_color_luminosity = median(button_3, "color_luminosity")
    @button_3_border_color_hue = median(button_3, "border_hue")
    @button_3_border_color_saturation = median(button_3, "border_saturation")
    @button_3_border_color_luminosity = median(button_3, "border_luminosity")
    @button_3_bg_color_hue = median(button_3, "bg_hue")
    @button_3_bg_color_saturation = median(button_3, "bg_saturation")
    @button_3_bg_color_luminosity = median(button_3, "bg_luminosity")
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

  def li_props
    li = Listelement.find(1).listelement_properties
    # vote_count(li)

    @li_font_size = average(li, "fontsize")
    @li_text_transform = median(li, "texttransformation")
    @li_letter_spacing = average(li, "letterspacing")
    @li_font_style = median(li, "fontstyle")
  end

  def section_props
    section = Section.find(1).section_properties
    section_2 = Section.find(2).section_properties
    section_3 = Section.find(3).section_properties
    section_4 = Section.find(4).section_properties

    @section_1_color_hue = median(section, "color_hue")
    @section_1_color_saturation = median(section, "color_saturation")
    @section_1_color_luminosity = median(section, "color_luminosity")
    @section_1_bg_color_hue = median(section, "bg_hue")
    @section_1_bg_color_saturation = median(section, "bg_saturation")
    @section_1_bg_color_luminosity = median(section, "bg_luminosity")

    @section_2_color_hue = median(section_2, "color_hue")
    @section_2_color_saturation = median(section_2, "color_saturation")
    @section_2_color_luminosity = median(section_2, "color_luminosity")
    @section_2_bg_color_hue = median(section_2, "bg_hue")
    @section_2_bg_color_saturation = median(section_2, "bg_saturation")
    @section_2_bg_color_luminosity = median(section_2, "bg_luminosity")

    @section_3_color_hue = median(section_3, "color_hue")
    @section_3_color_saturation = median(section_3, "color_saturation")
    @section_3_color_luminosity = median(section_3, "color_luminosity")
    @section_3_bg_color_hue = median(section_3, "bg_hue")
    @section_3_bg_color_saturation = median(section_3, "bg_saturation")
    @section_3_bg_color_luminosity = median(section_3, "bg_luminosity")

    @section_4_color_hue = median(section_4, "color_hue")
    @section_4_color_saturation = median(section_4, "color_saturation")
    @section_4_color_luminosity = median(section_4, "color_luminosity")
    @section_4_bg_color_hue = median(section_4, "bg_hue")
    @section_4_bg_color_saturation = median(section_4, "bg_saturation")
    @section_4_bg_color_luminosity = median(section_4, "bg_luminosity")
  end

  def body_props
    headingfont = Body.find(1).body_properties
    bodyfont = Body.find(2).body_properties

    heading_font = median(headingfont, "fontfamily")
    body_font = median(bodyfont, "fontfamily")

    @heading_font = clean_font(heading_font)
    @body_font = clean_font(body_font)
  end
end