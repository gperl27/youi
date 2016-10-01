class User < ApplicationRecord
  cookie_id uniqueness: :true
  has_many :h1s
end
