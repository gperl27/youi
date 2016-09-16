class SiteController < ApplicationController
  def index
    redirect_to home_path
  end

  def home
    @room = ['red', 'blue','green','yellow','purple','grey']

    respond_to do |format|
      format.html
      format.css
    end
  end

  def data
    p params["font-size"]
    p params["font-family"]
    p params["border-right-width"]
    #respond_to :json
    #render json: params.to_json
  end

  def dataget
    render json: params.to_json
  end

  def show
    @room = ['red', 'blue']

    respond_to do |format|
      format.html
      format.css
    end
  end

  def random
    @test = 'test'

    render json: @test
  end
end
