class H2 < ApplicationRecord
  has_many :h2_properties
  belongs_to :user
end
