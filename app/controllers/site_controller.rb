class SiteController < ApplicationController
  def index
    redirect_to home_path
  end

  def home
    h1 = H1.first.h1_properties

    average("test")

    @h1_font_size = fontsize(h1)

    p @h1_font_size

    respond_to do |format|
      format.html
      format.css
    end
  end

  def show
    @component = params[:component]
    @id = params[:id]
  end
end
