# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
parks = [{ parkname: 'Mesa Verde', location: 'Mesa Verde, Colorado', info: 'This area constitutes over 4,000 archaeological sites of the Ancestral Puebloan people, who lived here and elsewhere in the Four Corners region for at least 700 years. Cliff dwellings built in the 12th and 13th centuries include the famous Cliff Palace, which has 150 rooms and 23 kivas, and the Balcony House, with its many passages and tunnels.' }, {parkname: 'Great Sand Dunes', location: 'Mosca, Colorado', info: 'The tallest sand dunes in North America, up to 750 feet (230 m) tall, were formed by deposits of the ancient Rio Grande in the San Luis Valley. Abutting a variety of grasslands, shrublands, and wetlands, the park also has alpine lakes, six 13,000-foot mountains, and old-growth forests.'}, {parkname: 'Black Canyon of the Gunnison', location: 'Montrose, Colorado', info: 'The park protects a quarter of the Gunnison River, which slices sheer canyon walls from dark Precambrian-era rock. The canyon features incredibly steep descents, and is a popular site for river rafting and rock climbing. The deep, narrow canyon, made of gneiss and schist, is often in shadow and therefore appears black.' }, {parkname: 'Rocky Mountain', location: 'Estes Park, Colorado', info: 'Bisected north to south by the Continental Divide, this portion of the Rockies has ecosystems varying from over 150 riparian lakes to montane and subalpine forests to treeless alpine tundra. Wildlife including mule deer, bighorn sheep, black bears, and cougars inhabit its igneous mountains and glacier valleys. Longs Peak, a classic Colorado fourteener, and the scenic Bear Lake are popular destinations, as well as the famous Trail Ridge Road, which reaches an elevation of more than 12,000 feet (3,700 m).'}]

parks.each do |park|
  Park.create!(park)
end

users = [{ email: 'happy@fake.com', username: 'Happy', password: 'password', visited_parks: '' }]

users.each do |user|
  User.create!(user)
end

