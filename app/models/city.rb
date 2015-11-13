class City < ActiveRecord::Base
	has_many :posts
	has_many :users, through: :posts
	extend FriendlyId
	friendly_id :name, use: :slugged

end
