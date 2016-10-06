class UsersController < ApplicationController
  before_action :find_user, only: [:index, :show ]
  before_action :h1_props, only: [:index, :show ]
  before_action :h2_props, only: [:index, :show ]
  before_action :h3_props, only: [:index, :show ]
  before_action :h4_props, only: [:index, :show ]
  before_action :h5_props, only: [:index, :show ]
  before_action :button_props, only: [:index, :show ]
  before_action :paragraph_props, only: [:index, :show ]
  before_action :image_props, only: [:index, :show ]
  before_action :section_props, only: [:index, :show ]
  before_action :body_props, only: [:index, :show ]
  before_action :li_props, only: [:index, :show ]
  before_action :total_count, only: [:index,:show ]

  def index
    current_cookie = User.find_by(id: session[:user_id]).cookie_id
    cookie = params[:cookie_id]
    if cookie == current_cookie
      @cookie = cookie
    else
      session.clear
      user = User.find_by(cookie_id: cookie)
      session[:user_id] = user.id
      @cookie = user.cookie_id
    end

    @pronoun = "You"
    @y = "y"
  end

  def create
    session.clear

    rand = SecureRandom.urlsafe_base64
    user = User.create(cookie_id: rand)
    session[:user_id] = user.id
    user.initialize_user

    @cookie = user.cookie_id

    redirect_to user_path(@cookie)
  end

  def show
    @class = params[:class]
    @id = params[:id]
    @class << "-#{@id}"
    @model = params[:model]

    @cookie = User.find_by(id: session[:user_id]).cookie_id

    @currently_editing = which_component_is_editing(@class)
    @pronoun = "You"
  end

  # def download
  #   # send_file "/#{Rails.root}/app/views/users/_home_style.html.erb"
  #   @cookie = User.find_by(id: session[:user_id]).cookie_id
  #   response.headers['Content-Disposition'] = 'attachment; filename=yourpage.css'
  #   render 'show'
  # end

  private
  def find_user
    @user = User.find_by(id: session[:user_id])
  end

  def total_count
    @total_count = [
       @user.h1s[0].h1_properties.count ,  @user.h2s[0].h2_properties.count , 
       @user.h3s[0].h3_properties.count ,  @user.h4s[0].h4_properties.count , 
       @user.h5s[0].h5_properties.count ,  @user.images[0].image_properties.count , 
       @user.listelements[0].listelement_properties.count , 
       @user.paragraphs[0].paragraph_properties.count, @user.paragraphs[1].paragraph_properties.count,
       @user.sections[0].section_properties.count, @user.sections[1].section_properties.count,
       @user.sections[2].section_properties.count, @user.sections[3].section_properties.count,
       @user.bodies[0].body_properties.count, @user.bodies[1].body_properties.count,
       @user.buttons[0].button_properties.count, @user.buttons[1].button_properties.count,
       # @user.buttons[2].button_properties.count
    ].reduce(:+)
    @total_count -= 17
  end

  def which_component_is_editing(data)
    component_hash = {
      "h1-selector-#{@h1_selector_id_1}" => "Heading 1",
      "h2-selector-#{@h2_selector_id_1}" => "Heading 2",
      "h3-selector-#{@h3_selector_id_1}" => "Heading 3",
      "h4-selector-#{@h4_selector_id_1}" => "Heading 4",
      "h5-selector-#{@h5_selector_id_1}" => "Heading 5",
      "body-selector-#{@body_selector_id_1}" => "Heading Fonts",
      "body-selector-#{@body_selector_id_2}" => "Body Font",
      "button-selector-#{@button_selector_id_1}" => "Try Me Button",
      "button-selector-#{@button_selector_id_2}"  => "Toggle Buttons",
      # "button-selector-#{@button_selector_id_3}" => "Edit Button",
      "paragraph-selector-#{@paragraph_selector_id_1}" => "About Paragraph",
      "paragraph-selector-#{@paragraph_selector_id_2}" => "Image Paragraphs",
      "image-selector-#{@image_selector_id_1}" => "Images",
      "section-selector-#{@section_selector_id_1}" => "Header Colors",
      "section-selector-#{@section_selector_id_2}"  => "Font Section Colors",
      "section-selector-#{@section_selector_id_3}"  => "Info Section Colors",
      "section-selector-#{@section_selector_id_4}" => "Footer Colors",
      "li-selector-#{@li_selector_id_1}" => "List Elements"
    }
    current = check_components(data , component_hash)
    p current
    current = current[data]
  end

  def h1_props
    h1 = @user.h1s[0].h1_properties

    @h1_selector_id_1 = @user.h1s[0].id

    @h1_font_size = average(h1, "fontsize")
    @h1_font_weight = median(h1, "fontweight")
    @h1_text_transform = median(h1, "texttransformation")
    @h1_letter_spacing = average(h1, "letterspacing")
  end

  def h2_props
    h2 = @user.h2s[0].h2_properties

    @h2_selector_id_1 = @user.h2s[0].id

    @h2_font_size = average(h2, "fontsize")
    @h2_font_weight = median(h2, "fontweight")
    @h2_text_transform = median(h2, "texttransformation")
    @h2_letter_spacing = average(h2, "letterspacing")
    @h2_word_spacing = average(h2, "wordspacing")
  end

  def h3_props
    h3 = @user.h3s[0].h3_properties
    @h3_selector_id_1 = @user.h3s[0].id

    @h3_font_size = average(h3, "fontsize")
    @h3_font_weight = median(h3, "fontweight")
    @h3_text_transform = median(h3, "texttransformation")
    @h3_letter_spacing = average(h3, "letterspacing")
    @h3_word_spacing = average(h3, "wordspacing")
  end

  def h4_props
    h4 = @user.h4s[0].h4_properties
    @h4_selector_id_1 = @user.h4s[0].id

    @h4_font_size = average(h4, "fontsize")
    @h4_font_weight = median(h4, "fontweight")
    @h4_text_transform = median(h4, "texttransformation")
    @h4_letter_spacing = average(h4, "letterspacing")
    @h4_word_spacing = average(h4, "wordspacing")
  end

  def h5_props
    h5 = @user.h5s[0].h5_properties
    @h5_selector_id_1 = @user.h5s[0].id

    @h5_font_size = average(h5, "fontsize")
    @h5_font_weight = median(h5, "fontweight")
    @h5_text_transform = median(h5, "texttransformation")
    @h5_letter_spacing = average(h5, "letterspacing")
    @h5_word_spacing = average(h5, "wordspacing")
  end

  def button_props
    button_1 = @user.buttons[0].button_properties
    button_2 = @user.buttons[1].button_properties
    # button_3 = @user.buttons[2].button_properties

    @button_selector_id_1 = @user.buttons[0].id
    @button_selector_id_2 = @user.buttons[1].id
    # @button_selector_id_3 = @user.buttons[2].id


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

    # @button_3_font_size = average(button_3, "fontsize")
    # @button_3_font_weight = median(button_3, "fontweight")
    # @button_3_text_transform = median(button_3, "texttransformation")
    # @button_3_letter_spacing = average(button_3, "letterspacing")
    # @button_3_padding = average(button_3, "padding")
    # @button_3_border = average(button_3, "border")
    # @button_3_border_radius = average(button_3, "borderradius")
    # @button_3_border_style = median(button_3, "border_style")
    # @button_3_color_hue = median(button_3, "color_hue")
    # @button_3_color_saturation = median(button_3, "color_saturation")
    # @button_3_color_luminosity = median(button_3, "color_luminosity")
    # @button_3_border_color_hue = median(button_3, "border_hue")
    # @button_3_border_color_saturation = median(button_3, "border_saturation")
    # @button_3_border_color_luminosity = median(button_3, "border_luminosity")
    # @button_3_bg_color_hue = median(button_3, "bg_hue")
    # @button_3_bg_color_saturation = median(button_3, "bg_saturation")
    # @button_3_bg_color_luminosity = median(button_3, "bg_luminosity")
  end

  def paragraph_props
    paragraph_1 = @user.paragraphs[0].paragraph_properties
    paragraph_2 = @user.paragraphs[1].paragraph_properties

    @paragraph_selector_id_1 = @user.paragraphs[0].id
    @paragraph_selector_id_2 = @user.paragraphs[1].id

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
    image = @user.images[0].image_properties
    @image_selector_id_1 = @user.images[0].id

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
    li = @user.listelements[0].listelement_properties
    @li_selector_id_1 = @user.listelements[0].id

    @li_font_size = average(li, "fontsize")
    @li_text_transform = median(li, "texttransformation")
    @li_letter_spacing = average(li, "letterspacing")
    @li_font_style = median(li, "fontstyle")
  end

  def section_props
    section = @user.sections[0].section_properties
    section_2 = @user.sections[1].section_properties
    section_3 = @user.sections[2].section_properties
    section_4 = @user.sections[3].section_properties

    @section_selector_id_1 = @user.sections[0].id
    @section_selector_id_2 = @user.sections[1].id
    @section_selector_id_3 = @user.sections[2].id
    @section_selector_id_4 = @user.sections[3].id

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
    headingfont = @user.bodies[0].body_properties
    bodyfont = @user.bodies[1].body_properties

    @body_selector_id_1 = @user.bodies[0].id
    @body_selector_id_2 = @user.bodies[1].id

    heading_font = median(headingfont, "fontfamily")
    body_font = median(bodyfont, "fontfamily")

    @heading_font = clean_font(heading_font)
    @body_font = clean_font(body_font)
  end
end
