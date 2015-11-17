class WelcomeController < ApplicationController
	def index
		@top_users = User.order(points: :desc)
	end
end
