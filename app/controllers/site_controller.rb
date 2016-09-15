class SiteController < ApplicationController
  def home

  end

  def data
    p params["font-size"]
    p params["font-family"]
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
end
