class Button < ApplicationRecord
  has_many :button_properties
  belongs_to :user
end
