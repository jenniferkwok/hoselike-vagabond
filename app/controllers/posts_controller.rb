class PostsController < ApplicationController
	def index
		@posts = Post.all
		render :posts #render index?
	end

	def new
		@post = Post.new
		render :new #render new post
	end

	def create
		post_params = params.require(:post).permit(:cityid, :title, :content)
		@post = Post.create(post_params)
		redirect_to "/posts"
	end

	def show
	    @post = Post.find(params[:id])
		@city = City.find(@post.city_id)
	    render :show
  	end

  	def edit
  		id = params[:id]
        @post = Post.find(id)
  	end

  	def update
  		id = params[:id]
        post = Post.find(id)

        updated_attributes = params.require(:post).permit(:title, :content)
        post.update_attributes(updated_attributes)
        redirect_to post
  	end
end
