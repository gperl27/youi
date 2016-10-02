class BodiesController < ApplicationController
  def create
    id = params[:id]
    @body = Body.find(params[:id])

    p params["font-family"]
    font_family = params["font-family"]

    @body.body_properties.create(
        fontfamily: font_family
      )

    data = "body-selector-#{id}"
    render json: [data,id]
  end

  def show
    changes(BodyProperty)
    font_family_stats(BodyProperty)

    @cookie = User.find_by(id: session[:user_id]).cookie_id
  end
end
