class H1sController < ApplicationController
  before_action :font_size_stats, only: [:show]
  before_action :letter_spacing_stats, only: [:show]
  before_action :font_weight_stats, only: [:show]
  before_action :text_transform_stats, only: [:show]

  def create
    id = params[:id]
    @h1 = H1.find(id)
    
    font_size = params["font-size"]
    letter_spacing = params["letter-spacing"]
    font_weight = params["font-weight"]
    text_transform = params["text-transform"]

    @h1.h1_properties.create(
        fontsize: font_size,
        letterspacing: letter_spacing,
        fontweight: font_weight,
        texttransformation: text_transform
      )

    data = "h1-selector-#{id}"
    render json: [data,id]
  end

  def show
    @changes = H1Property.count
  end

  private

  def font_size_stats
    @fontsize_max = H1Property.maximum(:fontsize)
    @fontsize_min = H1Property.minimum(:fontsize)

    most = H1Property.group("fontsize").order("count_all desc").limit(1).count
    least = H1Property.group("fontsize").order("count_all").limit(1).count

    @fontsize_most = most.keys.join("")
    @fontsize_least = least.keys.join("")

    @fontsize = H1Property.group(:fontsize).count
  end

  def font_weight_stats
    @letterspacing_max = H1Property.maximum(:letterspacing)
    @letterspacing_min = H1Property.minimum(:letterspacing)

    most = H1Property.group("letterspacing").order("count_all desc").limit(1).count
    least = H1Property.group("letterspacing").order("count_all").limit(1).count

    @letterspacing_most = most.keys.join("")
    @letterspacing_least = least.keys.join("")

    @letterspacing = H1Property.group(:letterspacing).count
  end

  def letter_spacing_stats
    @fontweight_max = H1Property.maximum(:fontweight)
    @fontweight_min = H1Property.minimum(:fontweight)

    most = H1Property.group("fontweight").order("count_all desc").limit(1).count
    least = H1Property.group("fontweight").order("count_all").limit(1).count

    @fontweight_most = most.keys.join("")
    @fontweight_least = least.keys.join("")

    @fontweight = H1Property.group(:fontweight).count
  end

  def text_transform_stats
    most = H1Property.group("texttransformation").order("count_all desc").limit(1).count
    least = H1Property.group("texttransformation").order("count_all").limit(1).count

    @texttransformation_most = most.keys.join("")
    @texttransformation_least = least.keys.join("")

    @texttransformation = H1Property.group(:texttransformation).count
  end

end
