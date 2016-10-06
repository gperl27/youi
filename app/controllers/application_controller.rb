class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def median(component, prop)
    median = map_property(component, prop)

    median = get_max_count(median)[0]
  end

  def average(component, prop)
    average = map_property(component, prop)
    average.reduce(:+)/average.count
  end

  def clean_font(str)
    str.match(/\w+ ?\w+/)[0]
  end

  def which_component_is_editing(data)
    component_hash = {
      "h1-selector-1" => "Heading 1",
      "h2-selector-1" => "Heading 2",
      "h3-selector-1" => "Heading 3",
      "h4-selector-1" => "Heading 4",
      "h5-selector-1" => "Heading 5",
      "body-selector-1" => "Heading Fonts",
      "body-selector-2" => "Body Fonts",
      "button-selector-1" => "Try Me Button",
      "button-selector-2" => "Selection Buttons",
      # "button-selector-3" => "Edit Button",
      "paragraph-selector-1" => "About Paragraph",
      "paragraph-selector-2" => "Image Paragraphs",
      "image-selector-1" => "Images",
      "section-selector-1" => "Header Colors",
      "section-selector-2" => "Property Section Colors",
      "section-selector-3" => "About Section Colors",
      "section-selector-4" => "Footer Colors",
      "li-selector-1" => "List Elements"
    }
    current = check_components(data , component_hash)
    current = current[data]
  end

  private

  def map_property(component, prop_name)
    mapped_prop = component.map { |prop|
      prop[prop_name]
    }
  end

  def get_max_count(array)
    counts = Hash.new 0

    array.each do |word|
      counts[word] += 1
    end

    array = counts.max_by {|k,v| v }
  end

  def check_components(data, components)
    current = components.select {|k,v| k == data }
  end

################################################################
###################### Stats Methods ###########################
################################################################

  def changes(model)
    @changes = model.count
  end

  def font_size_stats(model)
    @fontsize_max = model.maximum(:fontsize)
    @fontsize_min = model.minimum(:fontsize)

    most = model.group("fontsize").order("count_all desc").limit(1).count
    least = model.group("fontsize").order("count_all").limit(1).count

    @fontsize_most = most.keys.join("")
    @fontsize_least = least.keys.join("")

    @fontsize = model.group(:fontsize).count
  end

  def font_weight_stats(model)
    @fontweight_max = model.maximum(:fontweight)
    @fontweight_min = model.minimum(:fontweight)

    most = model.group("fontweight").order("count_all desc").limit(1).count
    least = model.group("fontweight").order("count_all").limit(1).count

    @fontweight_most = most.keys.join("")
    @fontweight_least = least.keys.join("")

    @fontweight = model.group(:fontweight).count
  end

  def letter_spacing_stats(model)
    @letterspacing_max = model.maximum(:letterspacing)
    @letterspacing_min = model.minimum(:letterspacing)

    most = model.group("letterspacing").order("count_all desc").limit(1).count
    least = model.group("letterspacing").order("count_all").limit(1).count

    @letterspacing_most = most.keys.join("")
    @letterspacing_least = least.keys.join("")

    @letterspacing = model.group(:letterspacing).count
  end

  def text_transform_stats(model)
    most = model.group("texttransformation").order("count_all desc").limit(1).count
    least = model.group("texttransformation").order("count_all").limit(1).count

    @texttransformation_most = most.keys.join("")
    @texttransformation_least = least.keys.join("")

    @texttransformation = model.group(:texttransformation).count
  end

  def font_family_stats(model)
    most = model.group("fontfamily").order("count_all desc").limit(1).count
    least = model.group("fontfamily").order("count_all").limit(1).count

    @fontfamily_most = most.keys.join("")
    @fontfamily_least = least.keys.join("")

    @fontfamily = model.group(:fontfamily).count
  end

  def font_style_stats(model)
    most = model.group("fontstyle").order("count_all desc").limit(1).count
    least = model.group("fontstyle").order("count_all").limit(1).count

    @fontstyle_most = most.keys.join("")
    @fontstyle_least = least.keys.join("")

    @fontstyle = model.group(:fontstyle).count
  end

  def word_spacing_stats(model)
    @wordspacing_max = model.maximum(:wordspacing)
    @wordspacing_min = model.minimum(:wordspacing)

    most = model.group("wordspacing").order("count_all desc").limit(1).count
    least = model.group("wordspacing").order("count_all").limit(1).count

    @wordspacing_most = most.keys.join("")
    @wordspacing_least = least.keys.join("")

    @wordspacing = model.group(:wordspacing).count
  end

  def border_style(model)
    most = model.group("border_style").order("count_all desc").limit(1).count
    least = model.group("border_style").order("count_all").limit(1).count

    @border_style_most = most.keys.join("")
    @border_style_least = least.keys.join("")

    @border_style = model.group(:border_style).count
  end

  def border_radius(model)
    @borderradius_max = model.maximum(:borderradius)
    @borderradius_min = model.minimum(:borderradius)

    most = model.group("borderradius").order("count_all desc").limit(1).count
    least = model.group("borderradius").order("count_all").limit(1).count

    @borderradius_most = most.keys.join("")
    @borderradius_least = least.keys.join("")

    @borderradius = model.group(:borderradius).count
  end

  def border_stats(model)
    @border_max = model.maximum(:border)
    @border_min = model.minimum(:border)

    most = model.group("border").order("count_all desc").limit(1).count
    least = model.group("border").order("count_all").limit(1).count

    @border_most = most.keys.join("")
    @border_least = least.keys.join("")

    @border = model.group(:border).count
  end

  def height_stats(model)
    @height_max = model.maximum(:height)
    @height_min = model.minimum(:height)

    most = model.group("height").order("count_all desc").limit(1).count
    least = model.group("height").order("count_all").limit(1).count

    @height_most = most.keys.join("")
    @height_least = least.keys.join("")

    @height = model.group(:height).count
  end

  def width_stats(model)
    @width_max = model.maximum(:width)
    @width_min = model.minimum(:width)

    most = model.group("width").order("count_all desc").limit(1).count
    least = model.group("width").order("count_all").limit(1).count

    @width_most = most.keys.join("")
    @width_least = least.keys.join("")

    @width = model.group(:width).count
  end

  def padding_stats(model)
    @padding_max = model.maximum(:padding)
    @padding_min = model.minimum(:padding)

    most = model.group("padding").order("count_all desc").limit(1).count
    least = model.group("padding").order("count_all").limit(1).count

    @padding_most = most.keys.join("")
    @padding_least = least.keys.join("")

    @padding = model.group(:padding).count
  end

  def indent_stats(model)
    @indent_max = model.maximum(:indent)
    @indent_min = model.minimum(:indent)

    most = model.group("indent").order("count_all desc").limit(1).count
    least = model.group("indent").order("count_all").limit(1).count

    @indent_most = most.keys.join("")
    @indent_least = least.keys.join("")

    @indent = model.group(:indent).count
  end

  def text_align_stats(model)
    @textalign_max = model.maximum(:textalign)
    @textalign_min = model.minimum(:textalign)

    most = model.group("textalign").order("count_all desc").limit(1).count
    least = model.group("textalign").order("count_all").limit(1).count

    @textalign_most = most.keys.join("")
    @textalign_least = least.keys.join("")

    @textalign = model.group(:textalign).count
  end

  def color_stats(model)
    @color_hue = median(model.all, "color_hue")
    @color_hue_percent = (@color_hue/360.00)*100
    @color_luminosity = median(model.all, "color_luminosity")
    @color_saturation = median(model.all, "color_saturation")
  end

  def bg_stats(model)
    @bg_color_hue = median(model.all, "bg_hue")
    @bg_color_hue_percent = (@bg_color_hue/360.00)*100
    @bg_color_luminosity = median(model.all, "bg_luminosity")
    @bg_color_saturation = median(model.all, "bg_saturation")
  end

  def border_color_stats(model)
    @border_color_hue = median(model.all, "border_hue")
    @border_color_hue_percent = (@border_color_hue/360.00)*100
    @border_color_luminosity = median(model.all, "border_luminosity")
    @border_color_saturation = median(model.all, "border_saturation")
  end


end
