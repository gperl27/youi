class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def median(component, prop)
    median = map_property(component, prop)

    median = get_max_count(median)[0]

    p median

    # p median
    # median = median.sort
    # length = median.length
    # p median[(length-1)/2]
    # p median[length/2]

    # (median[(length-1)/2] + median[length/2])/2


  end

  def average(component, prop)
    average = map_property(component, prop)
    average.reduce(:+)/average.count
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

end
