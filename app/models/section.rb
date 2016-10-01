class Section < ApplicationRecord
  has_many :section_properties
  belongs_to :user
end
