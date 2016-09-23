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
end