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

u1=User.create({name: "Jamey", email: "jamey@hollis.com", password: "jamey", location: "Tatooine"})
u2=User.create({name: "Jen", email: "jen@kwok.com", password: "jen", location: "Dagoba"})
u3=User.create({name: "Francesca", email: "francesca@long.com", password: "francesca", location: "Alderaan"})
u4=User.create({name: "Josh", email: "josh@shin.com", password: "shin", location: "Coruscant"})


sf=City.create({name: "San Francisco", country: "USA", image: "http://ww2.kqed.org/pop/wp-content/uploads/sites/12/2014/05/6602702443_3b3c0d8316_b.jpg"})
lon=City.create({name: "London", country: "UK", image: "http://cdn.londonandpartners.com/assets/events/special/46355-640x360-changing_guard_gates_640.jpg"})
gib=City.create({name: "Gibraltar", country: "British overseas territory", image: "http://www.msccruises.co.za/za_en/Images/Gibraltar_tcm27-3906.jpg"})

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

