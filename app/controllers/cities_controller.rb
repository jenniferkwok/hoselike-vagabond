class CitiesController < ApplicationController
	def index
		@user= current_user
		@cities = City.all
		    @logged_in = logged_in?
		render "/users/index"
	end

	def show
		@user= current_user
   	 	@city = City.friendly.find(params[:id])
	   	if logged_in?
				@logged_in=true
		else
				@logged_in=false
		end
		p params[:id]
		@posts = Post.where(:city_id => @city.id).order(updated_at: :asc)
			@post = Post.new
		render :show	
  	end
end
