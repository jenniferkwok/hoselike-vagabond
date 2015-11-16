class PostsController < ApplicationController
	def index
		@posts = Post.all
    @user = current_user
		render :posts #render index?
	end

	def new
		@post = Post.new
		render :new #render new post
	end

	def create
    @city = City.find(params[:city_id])
		post_params = params.require(:post).permit(:cityid, :title, :content)
		@post = Post.create(post_params)
    @city.posts << @post
    current_user.posts << @post
    current_user.points +=1
    checkBadgesSF current_user
    checkBadgesGib current_user
    checkBadgesLon current_user
    current_user.save
		redirect_to "/cities/#{@city.slug}"
	end

	def show
    @user = current_user
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

  	def destroy
  		id = params[:id]
  		post = Post.find(id)
  		city = City.find(post.city_id)
  		post.destroy
		  pretty = city.slug  	
  		redirect_to "/cities/#{pretty}"
  	end
end
