class H5 < ApplicationRecord
  has_many :h5_properties
  belongs_to :user
end
