class Tourist < ActiveRecord::Base
  has_many :blogs
  has_many :places, through: :blogs
  belongs_to :user
end
