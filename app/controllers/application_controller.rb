class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def median(component, prop)
    median = map_property(component, prop)

    median = get_max_count(median)[0]
  end

  def average(component, prop)
    average = map_property(component, prop)
    average.reduce(:+)/average.count
  end

  def clean_font(str)
    str.match(/\w+ ?\w+/)[0]
  end

  # def vote_count(component)
  #   p component.count
  #   p $count
  #   $count += component.count
  # end
  def which_component_is_editing(data)
    component_hash = {
      "h1-selector-1" => "Heading 1",
      "h2-selector-1" => "Heading 2",
      "h3-selector-1" => "Heading 3",
      "h4-selector-1" => "Heading 4",
      "h5-selector-1" => "Heading 5",
      "body-selector-1" => "Heading Fonts",
      "body-selector-2" => "Body Fonts",
      "button-selector-1" => "Try Me Button",
      "button-selector-2" => "Selection Buttons",
      "button-selector-3" => "Edit Button",
      "paragraph-selector-1" => "About Paragraph",
      "paragraph-selector-2" => "Image Paragraphs",
      "image-selector-1" => "Images",
      "section-selector-1" => "Header Colors",
      "section-selector-2" => "Property Section Colors",
      "section-selector-3" => "About Section Colors",
      "section-selector-4" => "Footer Colors",
      "li-selector-1" => "List Elements"
    }
    current = check_components(data , component_hash)
    current = current[data]
  end

  private

  def map_property(component, prop_name)
    mapped_prop = component.map { |prop|
      prop[prop_name]
    }
  end

  def get_max_count(array)
    counts = Hash.new 0

    array.each do |word|
      counts[word] += 1
    end

    array = counts.max_by {|k,v| v }
  end

  # def extractRGB(rgb)
  #   rgb.gsub!(/\D+/, "")
  # end

  def check_components(data, components)
    current = components.select {|k,v| k == data }
  end

end
