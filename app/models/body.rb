class Body < ApplicationRecord
  has_many :body_properties
  belongs_to :user, required: false
end
