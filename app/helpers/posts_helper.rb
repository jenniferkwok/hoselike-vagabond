module PostsHelper

	def checkBadgesSF user
		sf = City.where("name = 'San Francisco'")[0] #0 because where returns an array of cities and we want the first one?
		sf_badges = Post.where("city_id = ? AND user_id = ?", sf.id, user.id)
		if sf_badges.length >=1 
			user.sf_first = true
		end
		if sf_badges.length >= 10
			user.sf_tenth = true
		end
	end


	def checkBadgesGib user
		gib = City.where("name = 'Gibraltar'")[0]
		gib_badges = Post.where("city_id = ? AND user_id = ?", gib.id, user.id)
		if gib_badges.length >=1 
			user.gib_first = true
		end
		if gib_badges.length >= 10
			user.gib_tenth = true
		end
	end

	def checkBadgesLon user
		lon = City.where("name = 'London'")[0]
		lon_badges = Post.where("city_id = ? AND user_id = ?", lon.id, user.id)
		if lon_badges.length >=1 
			user.lon_first = true
		end
		if lon_badges.length >= 10
			user.lon_tenth = true
		end
	end

end
