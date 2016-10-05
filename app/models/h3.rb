class H3 < ApplicationRecord
  has_many :h3_properties
  belongs_to :user, required: false
end
