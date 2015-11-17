class Post < ActiveRecord::Base
	acts_as_votable

	validates :title, presence: true, length: { maximum: 200 }
	validates :content, presence: true
	# No need to validate city because to create a new post need to be on the city
	belongs_to :user
	belongs_to :city

end
