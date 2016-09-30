class ImagesController < ApplicationController
  def create
    id = params[:id]
    @image = Image.find(id)

    padding = params["padding"]
    height = params["height"]
    width = params["width"]
    border = params["border"]
    border_radius = params["border-radius"]
    image_border_color = params["hsl-border-color"]
    image_border_color_hue = image_border_color[0]
    image_border_color_saturation = image_border_color[1]
    image_border_color_luminosity = image_border_color[2]

    @image.image_properties.create(
        padding: padding,
        height: height,
        width: width,
        border: border,
        borderradius: border_radius,
        border_hue: image_border_color_hue,
        border_saturation: image_border_color_saturation,
        border_luminosity: image_border_color_luminosity
      )

    data = "image-selector-#{id}"
    render json: [data, id]
  end

  def show
    changes(ImageProperty)
    padding_stats(ImageProperty)
    height_stats(ImageProperty)
    width_stats(ImageProperty)
    border_stats(ImageProperty)
    border_radius(ImageProperty)
    border_color_stats(ImageProperty)
  end
end
