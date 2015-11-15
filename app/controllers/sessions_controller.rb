class SessionsController < ApplicationController
	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:email, :password)
	    @user = User.confirm(user_params)
	    if @user
	      login(@user)
	      redirect_to "/users/#{@user.id}"
	    else
	    # flash[:error] = "Your user name and password didn't match! Please try again, but better."
	    redirect_to "/sign_in"
	    end
	end

	def destroy
		logout
		redirect_to "/"
	end
end
