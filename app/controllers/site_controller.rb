class SiteController < ApplicationController
  def index
    redirect_to home_path
  end

  def home
    h1 = H1.first.h1_properties

    @h1_font_size = average(h1, "fontsize")
    @h1_font_weight = median(h1, "fontweight")
    @h1_text_transform = median(h1, "texttransformation")
    @h1_letter_spacing = average(h1, "letterspacing")

    respond_to do |format|
      format.html
      format.css
    end
  end

  def show
    @class = params[:class]
    @id = params[:id]
    @model = params[:model]
  end
end
