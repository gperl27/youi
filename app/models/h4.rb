class H4 < ApplicationRecord
  has_many :h4_properties
  belongs_to :user, required: false
end
