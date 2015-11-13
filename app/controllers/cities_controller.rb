class CitiesController < ApplicationController
	def index
		@cities = City.all
		render "/users/index"
	end
	 
	def show
   	 @city = City.friendly.find(params[:id])
   	 if logged_in?
			@logged_in=true
		else
			@logged_in=false
	end
	p params[:id]
	@posts = Post.where(:cityid => @city.id)
    render :show
  end
end
