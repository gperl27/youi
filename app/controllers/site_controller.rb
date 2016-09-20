class SiteController < ApplicationController
  def index
    redirect_to home_path
  end

  # def home
  #   @room = ['red', 'blue','green','yellow','purple','grey']

  #   respond_to do |format|
  #     format.html
  #     format.css
  #   end
  # end

  # def data
  #   p params["font-size"]
  #   p params["font-family"]
  #   p params["border-right-width"]

  #   render json: params
  # end

  # def dataget
  #   render json: params.to_json
  # end

  # def show
  #   @room = ['red', 'blue']

  #   respond_to do |format|
  #     format.html
  #     format.css
  #   end
  # end

  # def random
  #   @test = 'test'

  #   render json: @test
  # end

  def home
    h1 = H1.first.h1_properties

    p h1.count

    @h1_font_size = h1.map { |prop|
      prop.fontsize
    }.reduce(:+)/h1.count

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
