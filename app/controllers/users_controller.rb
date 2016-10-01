class UsersController < ApplicationController
  # before_action :h1_props, only: [:index]
  def index
    user = User.find_by(id: session[:user_id])

    h1_props(user)

    @h1_selector_id = user.h1s[0].id

  end

  private

  def h1_props(user)
    h1 = user.h1s[0].h1_properties

    # vote_count(h1)
    @h1_font_size = average(h1, "fontsize")
    @h1_font_weight = median(h1, "fontweight")
    @h1_text_transform = median(h1, "texttransformation")
    @h1_letter_spacing = average(h1, "letterspacing")
  end
end
