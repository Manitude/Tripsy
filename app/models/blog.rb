class Blog < ActiveRecord::Base
  belongs_to :tourist
  belongs_to :place
  has_many :pictures


end
