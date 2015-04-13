class PlacesController < ApplicationController
	load_and_authorize_resource
	def show
	#	@place = Place.find(params[:id])
		@blogs = @place.blogs.all
	end
end
