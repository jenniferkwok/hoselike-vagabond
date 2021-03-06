class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :email, uniqueness: true, presence: true
	has_secure_password
	has_many :posts
	has_many :cities, through: :posts
	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
	acts_as_voter

end
