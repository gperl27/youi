class H1 < ApplicationRecord
  has_many :h1_properties
  belongs_to :user
end
