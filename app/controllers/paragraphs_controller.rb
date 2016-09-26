class ParagraphsController < ApplicationController
  def create
    id = params[:id]
    @paragraph = Paragraph.find(id)

    font_size = params["font-size"]
    text_align = params["text-align"]
    padding = params["padding"]
    indent = params["text-indent"]
    word_spacing = params["word-spacing"]

    @paragraph.paragraph_properties.create(
        fontsize: font_size,
        textalign: text_align,
        padding: padding,
        indent: indent,
        wordspacing: word_spacing
      )

    data = "paragraph-selector-#{id}"
    render json: [data, id]
  end
end
