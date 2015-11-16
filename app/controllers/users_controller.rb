class UsersController < ApplicationController
	# grab the users


	def index
		@top_users = User.order(points: :desc)
		@user = current_user
	end
	# we need to make a new user to pass to the form later
	def new
		@user = User.new
	end

	def create
		user_params = params.require(:user).permit(:name, :email, :password, :location)
		@user = User.create(user_params)
		@user.points = 0
		@user.sf_first = false
		@user.sf_tenth = false
		@user.lon_first = false
		@user.lon_tenth = false
		@user.gib_first = false
		@user.gib_tenth = false
		@user.save
		login(@user) # login the user
		redirect_to "/users/#{@user.id}" # go to show
	end

	def show
		@user = User.find(params[:id])
		if logged_in?
			@logged_in=true
		else
			@logged_in=false
		end
		@posts = Post.where(:user_id => params[:id])
		render :show
	end

	def edit
		if logged_in?
			@logged_in=true
		else
			@logged_in=false
		end
        id = params[:id]
        @user = User.find(id)
    end

    def update
        id = params[:id]
        user = User.find(id)

        updated_attributes = params.require(:user).permit(:name, :email, :password, :location)
        user.update_attributes(updated_attributes)
        redirect_to user
    end

end
