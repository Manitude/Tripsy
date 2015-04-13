class Place < ActiveRecord::Base
  has_many :blogs
  has_many :tourists, through: :blogs
end
