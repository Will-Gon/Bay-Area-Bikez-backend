# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attendance.delete_all
Club.delete_all
Like.delete_all
Place.delete_all
User.delete_all

c1 = Club.create(name: 'NorthBay Bikez', location: 'San Francisco')
c2 = Club.create(name: 'EastBay Bikez', location: 'Fremont')
c3 = Club.create(name: 'Redwood Bikez', location: 'Redwood City')

u1 = User.create(username: 'Jojo', password: 'password', club_id: c1.id)
u2 = User.create(username: 'BigBoi', password: 'password', club_id: c2.id)
u3 = User.create(username: 'Choppah', password: 'password', club_id: c3.id)

p1 = Place.create(lat: '37.774929', lng: '-122.419418', name: 'San Francisco, CA', description: 'San Francisco, officially the City and County of San Francisco, is a cultural, commercial, and financial center of Northern California.', date: '02/02/21')
p2 = Place.create(lat: '37.691109', lng: '-122.472221', name: 'Daly City, CA', description: 'Daly City is the largest city in San Mateo County, California, United States, with an estimated 2019 population of 106,280. Located in the San Francisco Bay Area, and immediately south of San Francisco.', date: '02/02/21')
p3 = Place.create(lat: '37.463640', lng: '-122.429240', name: 'Half Moon Bay, CA', description: 'Half Moon Bay is a small city on the California coast, south of San Francisco. A string of beaches along the bay includes Half Moon Bay State Beach. The Coastside Trail leads north to Pillar Point, near the huge waves of the Mavericks surf spot.', date: '02/02/21')
p4 = Place.create(lat: '37.547150', lng: '-122.314400', name: 'San Mateo, CA', description: 'San Mateo is a city in San Mateo County, California, about 20 miles south of San Francisco, and 31 miles northwest of San Jose.It has a Mediterranean climate, and is known for its rich history.', date: '02/02/21')
p5 = Place.create(lat: '37.804363', lng: '-122.271111', name: 'Oakland, CA', description: 'Oakland is a city on the east side of San Francisco Bay, in California.Near Chinatown, the Oakland Museum of California covers state history, nature and art. Uptown contains the art deco Fox and Paramount theaters, restaurants, bars and galleries.', date: '02/02/21')
p6 = Place.create(lat: '37.7258', lng: '-122.1569', name: 'San Leandro, CA', description: 'San Leandro is a large suburban town in Alameda County, California, United States. It is located on the eastern shore of San Francisco Bay, between Oakland to the northwest and Hayward to the southeast.', date: '02/02/21')
p7 = Place.create(lat: '37.9358', lng: '-122.3477', name: 'Richmond, CA', description: 'Richmond is a city in western Contra Costa County, California, United States. The city was incorporated on August 7, 1905 and has a city council.', date: '02/02/21')
p8 = Place.create(lat: '37.7396', lng: '-121.4260', name: 'Tracy, CA', description: 'Tracy is located inside a geographic triangle formed by Interstate 205 on the north side of the city, Interstate 5 to the east, and Interstate 580 to the southwest.', date: '02/02/21')
p9 = Place.create(lat: '37.6819', lng: '-121.7685', name: 'Livermore, CA', description: "Livermore is a city in Alameda County, California, in the United States. With an estimated 2019 population of 90,189, Livermore is the most populous city in the Tri-Valley. Livermore is located on the eastern edge of California's San Francisco Bay Area. The current mayor is John Marchand.", date: '02/02/21')
p10 = Place.create(lat: '37.8715', lng: '-122.2730', name: 'Berkeley, CA', description: 'Berkeley is a city in Northern California on the east side of San Francisco Bay. It’s home to the University of California, Berkeley, birthplace of the 1960s Free Speech Movement.', date: '02/02/21')
p11 = Place.create(lat: '37.7159', lng: '-121.9101', name: 'Dublin, CA', description: "Dublin is a suburban city of the East Bay in California. It is located within the Amador Valley of Alameda County's Tri-Valley region.", date: '02/02/21')
p12 = Place.create(lat: '37.9101', lng: '-122.0652', name: 'Walnut Creek, CA', description: 'Walnut Creek is a city in Contra Costa County, California, United States, located in the East Bay region of the San Francisco Bay Area, about 16 miles east of the city of Oakland.', date: '02/02/21')

l1 = Like.create(user_id: u1.id, place_id: p1.id)
l2 = Like.create(user_id: u2.id, place_id: p2.id)
l3 = Like.create(user_id: u3.id, place_id: p3.id)



puts "Done"


