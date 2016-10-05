class Listelement < ApplicationRecord
  has_many :listelement_properties
  belongs_to :user, required: false
end
