class Image < ApplicationRecord
  has_many :image_properties
  belongs_to :user
end
