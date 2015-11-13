# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Post.destroy_all
City.destroy_all

User.create({name: "Jamey", email: "jamey@hollis.com", password: "jamey", location: "Tatooine"})
User.create({name: "Jen", email: "jen@kwok.com", password: "jen", location: "Dagoba"})
User.create({name: "Francesca", email: "francesca@long.com", password: "francesca", location: "Alderaan"})
User.create({name: "Josh", email: "josh@shin.com", password: "shin", location: "Coruscant"})



Post.create({userid: "1", cityid: "1", title: "test post 1", content: "testing!! I love this city!!!!"})
Post.create({userid: "2", cityid: "2", title: "test post 2", content: "testing!! I love this city!!!!"})
Post.create({userid: "3", cityid: "3", title: "test post 3", content: "testing!! I love this city!!!!"})
Post.create({userid: "4", cityid: "3", title: "test post 4", content: "testing!! I love this city!!!"})

City.create({name: "San Francisco", country: "USA", image: "http://ww2.kqed.org/pop/wp-content/uploads/sites/12/2014/05/6602702443_3b3c0d8316_b.jpg"})
City.create({name: "London", country: "UK", image: "http://cdn.londonandpartners.com/assets/events/special/46355-640x360-changing_guard_gates_640.jpg"})
City.create({name: "Gibraltar", country: "British overseas territory", image: "http://www.msccruises.co.za/za_en/Images/Gibraltar_tcm27-3906.jpg"})