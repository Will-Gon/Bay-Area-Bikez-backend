# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attendance.delete_all
#Club.delete_all
Like.delete_all
Place.delete_all
User.delete_all

c1 = Club.create(name: 'NorthBay Bikez', location: 'San Francisco')
c2 = Club.create(name: 'EastBay Bikez', location: 'Fremont')
c3 = Club.create(name: 'Redwood Bikez', location: 'Redwood City')

u1 = User.create(username: 'Jojo', password: 'password', club_id: c1.id)
u2 = User.create(username: 'BigBoi', password: 'password', club_id: c2.id)
u3 = User.create(username: 'Choppah', password: 'password', club_id: c3.id)

p1 = Place.create(location: 'San Francisco', description: 'Nice place', date: '02/02/21')
p2 = Place.create(location: 'Oakland', description: 'Fun place', date: '02/07/21')
p3 = Place.create(location: 'Redwood city', description: 'Mid-peninsula', date: '02/04/21')

l1 = Like.create(user_id: u1.id, place_id: p1.id)
l2 = Like.create(user_id: u2.id, place_id: p2.id)
l3 = Like.create(user_id: u3.id, place_id: p3.id)




