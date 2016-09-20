module ApplicationHelper
  def average(test)
    p test
  end

  def fontsize(component)
    component_font_size = component.map { |prop|
      prop.fontsize
    }.reduce(:+)/component.count
  end
end
