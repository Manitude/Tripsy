class BlogsController < ApplicationController
  load_and_authorize_resource
	def index

	end
	
	# GET new_blog_url
    def new
      # return an HTML form for describing the new blog
    end

    # POST blog_url
    def create
      # create an blog
      params[:blog][:published_on] = Date.today
      params[:blog][:tags] = ["Manali", "Couple", "Honeymoon", "Flight", "March"]

      @blog = Blog.new(params.require(:blog).permit(:tourist_id, :place_id, :title, :body, :published_on, :tags))

      @blog.save
      redirect_to @blog
      #render plain: params[:blog].inspect
    end

    # GET blog_url
    def show
      # find and return the blog
    #  @blog = Blog.find(params[:id])
      logger.debug @blog.title
    end

    # GET edit_blog_url
    def edit
      # return an HTML form for editing the blog
    end

    # PUT blog_url
    def update
      # find and update the blog
    end

    # DELETE blog_url
    def destroy
      # delete the blog
    end
end
