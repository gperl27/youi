class Paragraph < ApplicationRecord
  has_many :paragraph_properties
  belongs_to :user
end
