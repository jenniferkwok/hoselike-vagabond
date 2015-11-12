class PostsController < ApplicationController
	def index
		@posts = Post.all
		render :index #render index?
	end

	def new
		@post = Post.new
		render :new #render new post
	end
end
