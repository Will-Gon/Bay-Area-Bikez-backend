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

p1 = Place.create(lat: 37.774929, lng: -122.419418, name: 'San Francisco, CA', description: 'San Francisco, officially the City and County of San Francisco, is a cultural, commercial, and financial center of Northern California.', date: '2021/01/30', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.cbre.us%2F-%2Fmedia%2Ftcc_hsr%2Fcountrytcc%2Fimages%2Fbu-icons%2Ftcc_buicon_sf.jpg&imgrefurl=https%3A%2F%2Fwww.cbre.us%2Ftcc%2Fpeople-and-offices%2Fsan-francisco&tbnid=XkO4rwx6nHV34M&vet=12ahUKEwjOwpjA8LfuAhVsADQIHaI_A0oQMygHegUIARDhAQ..i&docid=YqGl--9CoE-JVM&w=750&h=570&q=san%20francisco&ved=2ahUKEwjOwpjA8LfuAhVsADQIHaI_A0oQMygHegUIARDhAQ')
p2 = Place.create(lat: 37.691109, lng: -122.472221, name: 'Daly City, CA', description: 'Daly City is the largest city in San Mateo County, California, United States, with an estimated 2019 population of 106,280. Located in the San Francisco Bay Area, and immediately south of San Francisco.', date: '2021/02/06', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F9%2F98%2FWestlake_Daly_City_aerial.jpg&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FWestlake%2C_Daly_City%2C_California&tbnid=zr9su2gIXI6XgM&vet=12ahUKEwjSi7ng9LfuAhWThZ4KHRs8BFkQMygNegUIARD1AQ..i&docid=3aqZshkmCxpXJM&w=2688&h=1512&q=daly%20city&ved=2ahUKEwjSi7ng9LfuAhWThZ4KHRs8BFkQMygNegUIARD1AQ')
p3 = Place.create(lat: 37.463640, lng: -122.429240, name: 'Half Moon Bay, CA', description: 'Half Moon Bay is a small city on the California coast, south of San Francisco. A string of beaches along the bay includes Half Moon Bay State Beach. The Coastside Trail leads north to Pillar Point, near the huge waves of the Mavericks surf spot.', date: '2021/02/13', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia-cdn.tripadvisor.com%2Fmedia%2Fphoto-s%2F01%2F04%2Fc9%2Fae%2Fview-of-montara-from.jpg&imgrefurl=https%3A%2F%2Fwww.tripadvisor.com%2FTourism-g32469-Half_Moon_Bay_California-Vacations.html&tbnid=PbLB70ZfcQzKDM&vet=12ahUKEwjQsIL79LfuAhVLh54KHdW7BuQQMygHegUIARDaAQ..i&docid=_m8aCy3Sq6tjHM&w=550&h=412&q=half%20moon%20bay&ved=2ahUKEwjQsIL79LfuAhVLh54KHdW7BuQQMygHegUIARDaAQ')
p4 = Place.create(lat: 37.547150, lng: -122.314400, name: 'San Mateo, CA', description: 'San Mateo is a city in San Mateo County, California, about 20 miles south of San Francisco, and 31 miles northwest of San Jose.It has a Mediterranean climate, and is known for its rich history.', date: '2021/02/20', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.ngkf.com%2Fstorage-nmrk%2Fuploads%2Fimages%2F_800x418_crop_center-center_82_none%2FSan-Mateo-California-Newmark.jpg%3Fmtime%3D1602597546&imgrefurl=https%3A%2F%2Fwww.ngkf.com%2Foffices%2Fsan-mateo&tbnid=_zqOixO9uxXYGM&vet=12ahUKEwiZ3Py79bfuAhWCkZ4KHW5FAAAQMyggegUIARCRAg..i&docid=1T2Nhlxuq2KutM&w=800&h=418&q=san%20mateo%20california&ved=2ahUKEwiZ3Py79bfuAhWCkZ4KHW5FAAAQMyggegUIARCRAg')
p5 = Place.create(lat: 37.804363, lng: -122.271111, name: 'Oakland, CA', description: 'Oakland is a city on the east side of San Francisco Bay, in California.Near Chinatown, the Oakland Museum of California covers state history, nature and art. Uptown contains the art deco Fox and Paramount theaters, restaurants, bars and galleries.', date: '2021/02/27', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fhousely.com%2Fwp-content%2Fuploads%2F2016%2F04%2FOakland-Movers-750x469.jpg&imgrefurl=https%3A%2F%2Fhousely.com%2F5-things-didnt-know-oakland-california%2F&tbnid=cm9o214gbxIqhM&vet=12ahUKEwjVp8jQ9bfuAhVCmp4KHYVSDnYQMygkegUIARCcAg..i&docid=AsTZzLgu8xiRPM&w=750&h=469&q=Oakland%20california&ved=2ahUKEwjVp8jQ9bfuAhVCmp4KHYVSDnYQMygkegUIARCcAg')
p6 = Place.create(lat: 37.7258, lng: -122.1569, name: 'San Leandro, CA', description: 'San Leandro is a large suburban town in Alameda County, California, United States. It is located on the eastern shore of San Francisco Bay, between Oakland to the northwest and Hayward to the southeast.', date: '2021/03/06', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia-cdn.trulia-local.com%2Fneighborhood-media-service-prod%2Fca%2Fsan-leandro%2Fdowntown%2F2326-ca_sf2_downtown_san_leandro_762538_0023_1200x_cfit.jpg&imgrefurl=https%3A%2F%2Fwww.trulia.com%2Fn%2Fca%2Fsan-leandro%2Fdowntown%2F192866%2F&tbnid=7BMuGePaaC1I_M&vet=12ahUKEwiIj__g9bfuAhUOo54KHUoTCrYQMygEegUIARDLAQ..i&docid=1CYcHrmr35WvBM&w=1200&h=800&q=san%20leandro%20california&ved=2ahUKEwiIj__g9bfuAhUOo54KHUoTCrYQMygEegUIARDLAQ')
p7 = Place.create(lat: 37.9358, lng: -122.3477, name: 'Richmond, CA', description: 'Richmond is a city in western Contra Costa County, California, United States. The city was incorporated on August 7, 1905 and has a city council.', date: '2021/03/13', image_url: 'https://www.google.com/imgres?imgurl=http%3A%2F%2Fthetechtribune.com%2Fwp-content%2Fuploads%2F2021%2F01%2F334-800x445.jpg&imgrefurl=http%3A%2F%2Fthetechtribune.com%2Fbest-tech-startup-in-richmond-california%2F&tbnid=kOnT4I_HlKpZZM&vet=10CH4QMyiaAWoXChMIqM6blPe37gIVAAAAAB0AAAAAEAI..i&docid=V9TmcAdN9LBDWM&w=800&h=445&itg=1&q=Richmond%20california&ved=0CH4QMyiaAWoXChMIqM6blPe37gIVAAAAAB0AAAAAEAI')
p8 = Place.create(lat: 37.7396, lng: -121.4260, name: 'Tracy, CA', description: 'Tracy is located inside a geographic triangle formed by Interstate 205 on the north side of the city, Interstate 5 to the east, and Interstate 580 to the southwest.', date: '2021/03/20', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fd1x7qj5rlh2e19.cloudfront.net%2Fwp-content%2Fuploads%2F2018%2F11%2F06160006%2FBEAJ3A.jpg&imgrefurl=https%3A%2F%2Fravallirepublic.com%2Farticle_cab20169-6838-54dc-b27f-23e1e83df762.html&tbnid=wQlPgMGB0ZyflM&vet=12ahUKEwimzbHt9bfuAhXCgZ4KHWcEC3AQMyhWegUIARCMAQ..i&docid=5qq-2_DW46NKBM&w=814&h=543&q=tracy%20california&ved=2ahUKEwimzbHt9bfuAhXCgZ4KHWcEC3AQMyhWegUIARCMAQ')
p9 = Place.create(lat: 37.6819, lng: -121.7685, name: 'Livermore, CA', description: "Livermore is a city in Alameda County, California, in the United States. With an estimated 2019 population of 90,189, Livermore is the most populous city in the Tri-Valley. Livermore is located on the eastern edge of California's San Francisco Bay Area. The current mayor is John Marchand.", date: '2021/03/27', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.680homes.com%2Fmedia%2F680homes%2Fimages%2FstaticPage%2Flivermore-ca-vineyards-winery-properties.jpg&imgrefurl=https%3A%2F%2Fwww.680homes.com%2Fcontent%2FCity%2FLivermore&tbnid=Hf4M80DoePEoFM&vet=12ahUKEwiVsvn_9bfuAhUMop4KHcm7CWAQMygkegUIARCXAg..i&docid=1F9-5OuVenc6WM&w=725&h=483&q=livermore%20california&ved=2ahUKEwiVsvn_9bfuAhUMop4KHcm7CWAQMygkegUIARCXAg')
p10 = Place.create(lat: 37.8715, lng: -122.2730, name: 'Berkeley, CA', description: 'Berkeley is a city in Northern California on the east side of San Francisco Bay. It’s home to the University of California, Berkeley, birthplace of the 1960s Free Speech Movement.', date: '2021/04/03', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.racialequityalliance.org%2Fwp-content%2Fuploads%2F2016%2F10%2Fberkeley.jpg&imgrefurl=https%3A%2F%2Fwww.racialequityalliance.org%2Fjurisdictions%2Fberkeley-california%2F&tbnid=uhZQgyIdYBepnM&vet=12ahUKEwiB2sLg9rfuAhVQADQIHYT6AdoQMygEegUIARDQAQ..i&docid=ruem216QwjeVmM&w=550&h=367&q=berkeley%20california&ved=2ahUKEwiB2sLg9rfuAhVQADQIHYT6AdoQMygEegUIARDQAQ')
p11 = Place.create(lat: 37.7159, lng: -121.9101, name: 'Dublin, CA', description: "Dublin is a suburban city of the East Bay in California. It is located within the Amador Valley of Alameda County's Tri-Valley region.", date: '2021/04/10', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ff6%2FDublin%252CCAPublicLibrary11-26-04.jpg%2F280px-Dublin%252CCAPublicLibrary11-26-04.jpg&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FDublin%2C_California&tbnid=FDsKz6binPol7M&vet=12ahUKEwjH5aLs9rfuAhW1JX0KHQSTB8sQMygBegUIARC8AQ..i&docid=85lfKonM-OvclM&w=280&h=210&q=dublin%20california&ved=2ahUKEwjH5aLs9rfuAhW1JX0KHQSTB8sQMygBegUIARC8AQ')
p12 = Place.create(lat: 37.9101, lng: -122.0652, name: 'Walnut Creek, CA', description: 'Walnut Creek is a city in Contra Costa County, California, United States, located in the East Bay region of the San Francisco Bay Area, about 16 miles east of the city of Oakland.', date: '2021/04/17', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Flivability.com%2Fsites%2Fdefault%2Ffiles%2Fwalnut_creek.jpg&imgrefurl=https%3A%2F%2Flivability.com%2Fca%2Fwalnut-creek%2Fexperiences-adventures%2Fif-you-dont-live-in-walnut-creek-youll-want-to-after-reading&tbnid=bLr1T3kPhpBnaM&vet=12ahUKEwj9p7T39rfuAhXPAzQIHensAcYQMygKegUIARDdAQ..i&docid=Ja6lc1XHD2zbdM&w=1050&h=591&q=walnut%20creek%20california&ved=2ahUKEwj9p7T39rfuAhXPAzQIHensAcYQMygKegUIARDdAQ')

l1 = Like.create(user_id: u1.id, place_id: p1.id)
l2 = Like.create(user_id: u2.id, place_id: p2.id)
l3 = Like.create(user_id: u3.id, place_id: p3.id)



puts "Done"


