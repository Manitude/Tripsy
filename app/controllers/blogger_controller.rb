class BloggerController < ApplicationController
  
  def index
  	@places = Place.take(3)
  end
  
end
