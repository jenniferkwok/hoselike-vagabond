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

u1=User.create({name: "Jamey", email: "jamey@hollis.com", password: "jamey", location: "Tatooine", points: 5})
u2=User.create({name: "Jen", email: "jen@kwok.com", password: "jen", location: "Dagoba", points: 7})
u3=User.create({name: "Francesca", email: "francesca@long.com", password: "francesca", location: "Alderaan", points: 9})
u4=User.create({name: "Josh", email: "josh@shin.com", password: "shin", location: "Coruscant", points: 2})


sf=City.create({name: "San Francisco", country: "USA", image: "http://i.imgur.com/fxaQNYQ.jpg", background_img: "http://i.imgur.com/YTi8lo3.png"})
lon=City.create({name: "London", country: "UK", image: "http://i.imgur.com/VZMsbMe.jpg", background_img: "http://i.imgur.com/LrysIDp.jpg"})
gib=City.create({name: "Gibraltar", country: "British overseas territory", image: "http://i.telegraph.co.uk/multimedia/archive/01246/GIB_1246254c.jpg", background_img: "http://i.imgur.com/5FMDkRY.jpg"})

p1=Post.create({title: "test post 1", content: "testing!! I love this San Francisco!!!!"})
p2=Post.create({title: "test post 2", content: "testing!! I love this London!!!!"})
p3=Post.create({title: "test post 3", content: "testing!! I love this Gibraltar!!!!"})
p4=Post.create({title: "test post 4", content: "testing!! I love Gibraltar!!!"})

sf.posts << p1
u1.posts << p1

lon.posts << p2
u2.posts << p2

gib.posts << p3
u3.posts << p3

gib.posts << p4
u4.posts << p4

