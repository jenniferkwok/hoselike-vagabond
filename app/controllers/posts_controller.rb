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
    render :show
  end
end
