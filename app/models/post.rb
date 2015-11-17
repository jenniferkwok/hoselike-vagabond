class Post < ActiveRecord::Base
	validates :title, presence: true, length: { maximum: 200 }
	validates :content, presence: true
	# No need to validate city because to create a new post need to be on the city
	belongs_to :user
	belongs_to :city

	acts_as_votable

end
