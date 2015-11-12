class UsersController < ApplicationController
	# grab the users
	def index
		@users = User.all
	end

	# we need to make a new user to pass to the form later
	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:name, :email, :password, :location)
		@user = User.create(user_params)
		login(@user) # login the user
		redirect_to "/users/#{@user.id}" # go to show
	end

	def show
		@user = User.find(params[:id])
		render :show
	end

	def edit
        id = params[:id]
        @user = User.find(id)
    end

    def update
        id = params[:id]
        user = User.find(id)

        updated_attributes = params.require(:user).permit(:name, :description)
        user.update_attributes(updated_attributes)
        redirect_to user
    end

end
