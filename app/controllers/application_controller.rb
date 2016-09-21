class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def fontsize(component)
    p component
    component_font_size = component.map { |prop|
      prop.fontsize
    }.reduce(:+)/component.count
  end
end
